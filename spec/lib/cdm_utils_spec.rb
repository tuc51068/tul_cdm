require 'nokogiri'

describe 'List CONTENTdm collections' do

  let (:config) { YAML.load_file(File.expand_path("#{Rails.root}/config/contentdm.yml", __FILE__)) }
  let (:collection_name) { "p16002coll9" }
  let (:collection_title) { "Allied Posters of World War I" }
  let (:private_collection_name) { "p16002coll11" }
  let (:yearbook_collection_name) { "p245801coll12" }
  let (:cdm_data_root) { "#{Rails.root}/spec/fixtures/fedora/cdm" }
  let (:schema_url) { "http://www.fedora.info/definitions/1/0/foxml1-1.xsd" }
  let (:download_directory) { config['cdm_download_dir'] }
  let (:converted_directory) { config['cdm_foxml_dir'] }
  let (:number_of_collections) { 11 }
  let (:download_file_count) { 11 }

  before :all do
    DigitalCollection.delete_all if DigitalCollection.count
    1.upto 11 do FactoryGirl.create(:digital_collections_list) end
  end

  after :all do
    DigitalCollection.delete_all
  end

  describe 'list' do
    it "should list ContentDM collections" do
      collections = CDMUtils.list
      expect(collections.length).to be >= number_of_collections
    end
  end

  describe 'dmGetCollectionParameters' do
    it "should show collection name" do
      title = CDMUtils.getCollectionName(config['cdm_server'], collection_name)
      expect(title).to eq(collection_title)
    end
  end

  describe 'download' do
    after :each do
      FileUtils.rm Dir.glob "#{download_directory}/*.xml"
    end

    it "should download a single collection" do
      VCR.use_cassette "cdm-util-download/should_harvest_a_single_ContentDM_file" do
        downloaded = CDMUtils.download_one_collection(config, collection_name)
      end
      file_count = Dir[File.join(download_directory, '*.xml')].count { |file| File.file?(file) }
      expect(file_count).to eq(1)
      file = File.join(download_directory, collection_name + '.xml')
      doc = Nokogiri::XML(File.read(file))
      # Tests for both metadata and attempted access to private collection
      expect(['metadata', 'getfile']).to include doc.child.name
    end

    it "should not download a private collection" do
      FactoryGirl.create(:private_digital_collection)
      VCR.use_cassette "cdm-util-download/should_not_harvest_a_private_ContentDM_file" do
        @downloaded = CDMUtils.download_one_collection(config, private_collection_name)
      end
      expect(@downloaded).to eq(0)
      file_count = Dir[File.join(download_directory, '*.xml')].count { |file| File.file?(file) }
      expect(file_count).to eq(0)
    end

    # TODO Ignore OCR for now, revisit during later phase
    xcontext "OCR Text" do

      let (:ocr_text_tag) { "Document_Content" }
      let (:ocr_text_xpath) { "//Document_Content" }
      let (:match_text) { /TEMPLE UNIVERSITY  School of Law  1967/ }

      it "should harvest yearbook document content" do
        VCR.use_cassette "cdm-util-download/should_harvest_yearbook_document_content" do
          downloaded = CDMUtils.download_one_collection(config, yearbook_collection_name)
        end
        file_count = Dir[File.join(download_directory, '*.xml')].count { |file| File.file?(file) }
        file = File.join(download_directory, yearbook_collection_name + '.xml')
        doc = Nokogiri::XML(File.read(file))
        # Tests for OCR text tag
        expect(doc).to have_tag(ocr_text_tag)
        expect(doc.xpath(ocr_text_xpath).text).to match(match_text)
      end
    end

  end

  describe 'convert' do
    include TagMatchers
    let (:source_file_name) { collection_name + '.xml' }

    after :each do
      FileUtils.rm Dir.glob "#{download_directory}/*.xml"
      FileUtils.rm Dir.glob "#{converted_directory}/*.xml"
    end

    it "should conform a single collection file" do
      VCR.use_cassette "cdm-util-convert/should_conform_a_ContentDM_file" do
        downloaded = CDMUtils.download_one_collection(config, collection_name)
        collection_file =  collection_name + '.xml'

        text = File.read(File.join(download_directory, collection_file))
        doc = Nokogiri::XML(CDMUtils.conform(text, collection_file, converted_directory))

        expect(doc).to have_tag('manifest')
        expect(doc).to_not have_tag('Title_Alternative')
        expect(doc).to have_tag('Alternate_Title')
        expect(doc).to_not have_tag('Created_by')
        expect(doc).to have_tag('Created')
        expect(doc).to have_tag('contentdm_collection_id')
        expect(doc.search('contentdm_collection_id').text).to include collection_file
        expect(doc).to have_tag('Rails_Root')
        expect(doc).to have_tag('foxml_dir')
        expect(doc).to have_tag('Downloadable')
        expect(doc).to have_tag('Downloadable_OCR')
        expect(doc).to have_tag('Physical_Description')
      end
    end

    it "should convert a single collection file" do
      VCR.use_cassette "cdm-util-convert/should_convert_a_ContentDM_file" do
        downloaded = CDMUtils.download_one_collection(config, collection_name)
        xml_file_count = `grep -ic "<record>" #{download_directory}/*`.to_i
        CDMUtils.convert_file(File.join(download_directory, collection_name + '.xml'), converted_directory)
        file_count = Dir[File.join(converted_directory, '*.xml')].count { |file| File.file?(file) }
        expect(file_count).to eq(xml_file_count)
        xsd = Nokogiri::XML::Schema(open(schema_url))
        Dir.glob(File.join(converted_directory, '**', '*.xml')).each do |file|
          doc = Nokogiri::XML(File.read(file))
          xsd.validate(doc).each do |error|
            puts error
          end
          expect(xsd.valid?(doc)).to be
        end
      end
    end
  end

  describe 'ingest' do
    let (:source_file_name) { collection_name + '.xml' }
    let (:ingest_pid) { "pid:001" }

    after :each do
      FileUtils.rm Dir.glob "#{download_directory}/*.xml"
      FileUtils.rm Dir.glob "#{converted_directory}/*.xml"
    end

    it "should ingest a collection" do
      downloaded = CDMUtils.download_one_collection(config, collection_name)
      CDMUtils.convert_file(File.join(download_directory, collection_name + '.xml'), converted_directory)
      contents = ENV['DIR'] ? Dir.glob(File.join(ENV['DIR'], "*.xml")) : Dir.glob("#{converted_directory}/*.xml")
      ingested_count = 0
      contents.each do |file|
        allow(ActiveFedora::FixtureLoader).to receive(:import_to_fedora).with(file).and_return(ingest_pid)
        allow(ActiveFedora::FixtureLoader).to receive(:index).and_return({"responseHeader"=>{"status"=>0, "QTime"=>1}})
        status = CDMUtils.ingest_file(file)
        ingested_count += status[:solr_status] != 0 ? 0 : 1
        expect(status[:solr_status]).to equal 0
        expect(status[:pid]).to match ingest_pid
      end
      expect(ingested_count).to equal(contents.length)
    end
  end
end
