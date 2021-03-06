# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
# Digital Colleciton Seed
DigitalCollection.delete_all;

collections = [
  {
  collection_alias: 'p16002coll9',
  name:             'Allied Posters of World War I',
  thumbnail_url:    'http://digital.library.temple.edu/ui/custom/default/collection/default/resources/custompages/home/alliedposters_dtl.jpg',
  image_url:        'http://digital.library.temple.edu/ui/custom/default/collection/coll_p16002coll9/images/pt160014_lnd.jpg',
  priority:         11,
  is_private:       false,
  allowed_ip_addresses: "",
  featured:         "Yes",
  custom_url:       '',
  is_custom_landing_page: false,
  is_format_based:  false,
  finding_aid_link: 'http://example.com/finding_aid/p16002coll9',
  finding_aid_title:'Allied Posters of World War I',
  catalog_record_link:'http://example.com/catalog_record/p16002coll9',
  catalog_record_title:'Allied Posters of World War I',
  short_description: "1,500 World War I posters in Temple University Libraries' Special Collections Research Center.",
  description:      <<-END.gsub(/^ {6}/, '')
      <p><span>This collection of over 1,500 World War I posters in Temple University Libraries' Special Collections Research Center was donated by George F. Tyler in 1937. The posters provide a graphic portrayal of Allied propaganda used to educate the public and enlist support for the war effort. In addition, they serve as examples of the art, design, and printing techniques of the period.</span></p>
      <p><span>An <a href="http://gamma.library.temple.edu/exhibits/exhibits/show/george-tyler-wwi-poster-exhibi" target="new">exhibition</a> of a selection of the posters is accompanied by primary source material and commentary intended to provide additional context, insight, and interpretation.</span></p>
    END
  },
  {
  collection_alias: 'cnrc',
  name:             'Civil Rights in a Northern City: Philadelphia',
  thumbnail_url:    'http://digital.library.temple.edu/ui/custom/default/collection/default/resources/custompages/home/girard_dtl.jpg',
  image_url:        '',
  priority:         21,
  is_private:       false,
  allowed_ip_addresses: "",
  featured:         "No",
  custom_url:       'http://northerncity.library.temple.edu/',
  is_custom_landing_page: true,
  is_format_based:  false,
  short_description: "A collection of digitized archival resources detailing the history of the modern civil rights movement in Philadelphia.",
  description:      'Collection of digitized archival resources detailing the history of the modern civil rights movement in Philadelphia',
  },
  {
  collection_alias: 'p16002coll14',
  name:             'Franklin H. Littell Papers',
  thumbnail_url:    'http://digital.library.temple.edu/ui/custom/default/collection/default/resources/custompages/home/littell_dtl.jpg',
  image_url:        'http://digital.library.temple.edu/ui/custom/default/collection/coll_p16002coll14/images/Littell_Landing_Pagev3.jpg',
  priority:         22,
  is_private:       false,
  allowed_ip_addresses: "",
  featured:         "No",
  custom_url:       '',
  is_custom_landing_page: false,
  is_format_based:  false,
  finding_aid_link: 'http://example.com/finding_aid/p16002coll14',
  finding_aid_title:'Franklin H. Littell Papers',
  catalog_record_link:'http://example.com/catalog_record/p16002coll14',
  catalog_record_title:'Franklin H. Littell Papers',
  short_description: 'Most of Franklin Littell\'s "Speeches, lectures, and article manuscripts" dating from 1940 to 2002.',
  description:      <<-END.gsub(/^ {6}/, '')
      <p>A portion of the Franklin H. Littell papers has been digitized to offer online access.</p>
      <p>Franklin Littell (1917-2009), emeritus professor of religion at Temple University, led a distinguished career that spanned more than seventy years. He was a pacifist and activist, proponent of the Christian Laity and an advocate for new religious movements, an historian, political commentator and supporter of the State of Israel. He devoted ten years to work with the Protestant Churches and Laity in US occupied Germany and more than fifty years to the study and remembrance of the Holocaust and German Church Struggle. Though his activities and affiliations changed over time, he maintained strong beliefs in interfaith understanding and religious liberty his entire life.</p>
      <p">Currently, manuscripts of most of Littell's "Speeches, lectures, and article manuscripts" dating from 1940 to 2002 are available digitally, though more will be added. Also available are correspondence and administrative records relating to his work with the National Council of Methodist Youth from 1934 to 1944.</p>
    END
  },
  {
  collection_alias: 'p15037coll7',
  name:             'George D. McDowell Philadelphia Evening Bulletin Clippings',
  thumbnail_url:    'http://digital.library.temple.edu/ui/custom/default/collection/default/resources/custompages/home/bul_clip_dtl.jpg',
  image_url:        'http://digital.library.temple.edu/ui/custom/default/collection/coll_p15037coll7/images/Clippings_widescreen.jpg',
  priority:         23,
  is_private:       false,
  allowed_ip_addresses: "",
  featured:         "Yes",
  custom_url:       '',
  is_custom_landing_page: false,
  is_format_based:  false,
  finding_aid_link: 'http://example.com/finding_aid/p15037coll7',
  finding_aid_title:'George D. McDowell Philadelphia Evening Bulletin Clippings',
  catalog_record_link:'http://example.com/catalog_record/p15037coll7',
  catalog_record_title:'George D. McDowell Philadelphia Evening Bulletin Clippings',
  short_description: 'George D. McDowell Philadelphia Evening Bulletin Collection digitized in 2010 - 2013.',
  description:      <<-END.gsub(/^ {6}/, '')
      <p><span>Search here for sample clippings from the <strong>George D. McDowell Philadelphia Evening Bulletin Collection </strong>digitized in 2010 - 2013.</span></p>
    END
  },
  {
  collection_alias: 'stereotypicalimages',
  name:             'Stereotypical Images Teaching Collection',
  thumbnail_url:    'http://digital.library.temple.edu/ui/custom/default/collection/default/resources/custompages/home/bertw_dtl.jpg',
  image_url:        'http://digital.library.temple.edu/ui/custom/default/collection/default/resources/custompages/stereotypicalimages/cream_of_wheat.jpg',
  priority:         71,
  is_private:       false,
  allowed_ip_addresses: "",
  featured:         "No",
  custom_url:       '',
  is_custom_landing_page: false,
  is_format_based:  false,
  short_description: 'Teaching image collection designed to provide resources for faculty and students, studying historical representations of various cultural and ethnic groups.',
  description:      <<-END.gsub(/^ {6}/, '')
    <p>This is a teaching image collection designed to provide resources for faculty and students, studying historical representations of various cultural and ethnic groups.
      The collection provides examples of stereotyping based on race, religion, gender, and other characteristics that have shaped and continue to shape American society,
      and some images may be offensive to some viewers. This collection is in the process of being created and eventually a large number of groups will be represented.
    </p>
    <p>
      To learn more about how the collection is used for pedagogy and scholarship, please see the <a href="/cdm/stereotypicalabout/?f[digital_collection_sim][]=Stereotypical%20Images%20Teaching%20Collection">About Page</a>.
    </p>
  END
  },
  {
  collection_alias: 'p15037coll1',
  name:             'Temple Sheet Music Collections',
  thumbnail_url:    'http://digital.library.temple.edu/ui/custom/default/collection/default/resources/custompages/home/sm00244_dtl.jpg',
  image_url:        'http://digital.library.temple.edu/ui/custom/default/collection/coll_p15037coll1/images/Sheet_Music_Widescreen_Border.jpg',
  priority:         73,
  is_private:       false,
  allowed_ip_addresses: "",
  featured:         "Yes",
  custom_url:       '',
  is_custom_landing_page: false,
  is_format_based:  false,
  finding_aid_link: 'http://example.com/finding_aid/p15037coll1',
  finding_aid_title:'Temple Sheet Music Collections',
  catalog_record_link:'http://example.com/catalog_record/p15037coll1',
  catalog_record_title:'Temple Sheet Music Collections',
  short_description: "Sheet music published from the early 19th to early 20th centuries, from Temple University Libraries’ collections, contains lithographed and engraved cover art.",
  description:      <<-END.gsub(/^ {6}/, '')
      <p><span>This sheet music published from the early 19th to early 20th centuries, from Temple University Libraries’ collections, contains lithographed and engraved cover art. These covers show remarkable designs and document developing printing techniques throughout more than 100 years. The collections include popular dances and songs, comic tunes that reveal the ironies and anxieties of the time, and music commemorating great exhibitions and honoring heroes and stars.</span></p>
    END
  },
  {
  collection_alias: 'p15037coll12',
  name:             'Temple Undergraduate Research Prize Winners',
  thumbnail_url:    'http://digital.library.temple.edu/ui/custom/default/collection/default/resources/custompages/home/co_identity_dtl.jpg',
  image_url:        'http://digital.library.temple.edu/ui/custom/default/collection/coll_p15037coll12/images/LibPrizelanding2013.jpg',
  priority:         81,
  is_private:       false,
  allowed_ip_addresses: "",
  featured:         "No",
  custom_url:       '',
  is_custom_landing_page: false,
  is_format_based:  false,
  finding_aid_link: 'http://example.com/finding_aid/p15037coll12',
  finding_aid_title:'Temple Undergraduate Research Prize Winners',
  catalog_record_link:'http://example.com/catalog_record/p15037coll12',
  catalog_record_title:'Temple Undergraduate Research Prize Winners',
  short_description: "Winning entries of The Library Prize for Undergraduate Research.",
  description:      <<-END.gsub(/^ {6}/, '')
      <p><span>The Library Prize for Undergraduate Research was established in 2004 to encourage the use of Library resources, to enhance the development of library research techniques, and to honor the best research projects produced each year by Temple University undergraduate students. Up to three projects are selected each year to win $1000. Winning entries exhibit: originality, depth, breadth, or sophistication in the use of library collections; exceptional ability to select, evaluate, synthesize, and utilize library resources in the creation of a project in any media; and evidence of personal growth through the acquisition of newfound knowledge.</span></p>
      <p><span>Also included in this collection are the winning entries for <strong>The Library Prize for Undergraduate Research on Sustainability &amp; the Environment</strong>. Established in the 2010-2011 academic year by Temple Libraries and Gale, a leading organization in e-research and educational publishing, this prize encourage undergraduate research and projects in the area of sustainability. Up to two projects are selected each year to win $1000.</span></p>
    END
  },
  {
  collection_alias: 'p16002coll8',
  name:             'Temple University Press E-Books',
  thumbnail_url:    'http://digital.library.temple.edu/ui/custom/default/collection/default/resources/custompages/home/tu_press_dtl.jpg',
  image_url:        'http://digital.library.temple.edu/ui/custom/default/collection/coll_p16002coll8/images/TU_Press_Landing_Page_V3.jpg',
  priority:         83,
  is_private:       false,
  allowed_ip_addresses: "",
  featured:         "No",
  custom_url:       '',
  is_custom_landing_page: false,
  is_format_based:  false,
  proxy_url_prefix: '',
  finding_aid_link: 'http://example.com/finding_aid/p16002coll8',
  finding_aid_title:'Temple University Press E-Books',
  catalog_record_link:'http://example.com/catalog_record/p16002coll8',
  catalog_record_title:'Temple University Press E-Books',
  short_description: "Temple University Press has published award-winning academic and trade press books.",
  description:      <<-END.gsub(/^ {6}/, '')
      <p><span>The Temple University Press has published award-winning academic and trade press books for more than 40 years during which time the Press has become well-known nationally and internationally for the quality of its offerings in the social sciences. All Temple University Press titles are held in print in the Special Collections Research Center of the University Libraries. Most are also available for borrowing from the circulating collection of Paley Library or for purchase from the <a href="http://www.temple.edu/tempress/" target="new">University Press website</a>.</span></p>
      <p><span>In 2011 the Temple University Libraries partnered with the Press to create epub and pdf versions of 165 of the Press’ backfile in order to offer these selected books in 24/7 full text searchable form. <strong>Access to this collection is restricted to current Temple faculty, staff and students for non-commercial academic use only</strong>. If you are attempting to access these titles from off-campus, you will need to authenticate to the University network.</span></p>
    END
  },
  {
  collection_alias: 'p245801coll12',
  name:             'Temple University Yearbooks',
  thumbnail_url:    'http://digital.library.temple.edu/ui/custom/default/collection/default/resources/custompages/home/templar65_dtl.jpg',
  image_url:        'http://digital.library.temple.edu/ui/custom/default/collection/coll_p245801coll12/images/Yearbook_widescreen_3.jpg',
  priority:         91,
  is_private:       false,
  allowed_ip_addresses: "",
  featured:         "No",
  custom_url:       '',
  is_custom_landing_page: false,
  is_format_based:  false,
  finding_aid_link: 'http://example.com/finding_aid/p245801coll12',
  finding_aid_title:'Temple University Yearbooks',
  catalog_record_link:'http://example.com/catalog_record/p245801coll12',
  catalog_record_title:'Temple University Yearbooks',
  short_description: "Temple University yearbooks, including the Templar, its general yearbook, as well as books from its allied health, dental, horticulture, medical, nursing, podiatry and pharmacy schools.",
  description:      <<-END.gsub(/^ {6}/, '')
      <p><span>Temple University has digitized&nbsp;a majority of its yearbooks, including the <em>Templar</em>, its general yearbook, as well as books from its allied health, dental, medical, nursing, podiatry&nbsp;and pharmacy schools. Some professional schools, such as Nursing, Podiatry, and Medicine, had their own pages in the <em>Templar</em> into the 1920s before starting their own yearbooks.</span></p>
      <p><span>Both the <em>Templar</em> and the medical school yearbook, <em>The Skull</em>, have enjoyed consistent publication and titling from their inception through to their present editions. Other professional school books have appeared less frequently and feature a wide array of titles. They are</span></p>
      <ul>
        <li>Allied Health: <em>Plexus</em></li>
        <li>Dentistry: <em>The Dental Log</em>, <em>The Dent-Owl</em>, <em>The Dental Ray</em>, <em>The Diamond</em>, <em>The Gateway</em>, <em>The Handpiece</em>, <em>Odontolog, Impressions,</em> and <em>The Record</em></li>
        <li>Nursing: <em>Cross-Bones</em>, <em>Promethean</em>, <em>Promethian</em>, and <em>Reveille</em></li>
        <li>Podiatry: <em>Tempodian</em>, <em>Templodian</em>, and <em>Achilles</em></li>
        <li>Pharmacy: <em>The Alembic</em>, <em>Apothecan</em>, <em>Arrex</em>, <em>Asclepian</em>, <em>The Pharmacopian</em>, <em>Pharmacy</em>, <em>Secundum Artem</em> and <em>The Show Globe</em></li>
      </ul>
  END
  },
  {
  collection_alias: 'p16002coll1',
  name:             'SCRC Audio',
  priority:         112,
  is_private:       false,
  allowed_ip_addresses: "",
  featured:         "No",
  custom_url:       '',
  is_custom_landing_page: false,
  is_format_based:  true,
  finding_aid_link: 'http://example.com/finding_aid/p16002coll1',
  finding_aid_title:'SCRC Audio',
  catalog_record_link:'http://example.com/catalog_record/p16002coll1',
  catalog_record_title:'SCRC Audio',
  short_description: "SCRC Audio digital collection contains audio files from holdings in the Special Collections Research Center.",
  description:      <<-END.gsub(/^ {6}/, '')
      <p>The SCRC Audio digital collection contains audio files from holdings in the Special Collections Research Center (SCRC). Some of the objects in this collection are better contextualized in the following featured collection(s):</p>
      <ul>
        <li>
          <div class="cdm_style" style="margin-top: 10px;"><a href="http://northerncity.library.temple.edu/"> Civil Rights in a Northern City: Philadelphia</a></div>
        </li>
      </ul>
    END
  },
  {
  collection_alias: 'p15037coll2',
  name:             'SCRC Film and Video',
  priority:         131,
  is_private:       false,
  allowed_ip_addresses: "",
  featured:         "No",
  custom_url:       '',
  is_custom_landing_page: false,
  is_format_based:  true,
  finding_aid_link: 'http://example.com/finding_aid/p15037coll2',
  finding_aid_title:'SCRC Film and Video',
  catalog_record_link:'http://example.com/catalog_record/p15037coll2',
  catalog_record_title:'SCRC Film and Video',
  short_description: "SCRC Film and Video digital collection contains video files from holdings in the Special Collections Research Center.",
  description:      <<-END.gsub(/^ {6}/, '')
    <p>The SCRC Film and Video digital collection contains video files from holdings in the Special Collections Research Center (SCRC). Some of the objects in this collection are better contextualized in the following featured collection(s):</p>
    <ul>
      <li>
        <div class="cdm_style" style="margin-top: 10px;"><a href="http://northerncity.library.temple.edu/"> Civil Rights in a Northern City: Philadelphia</a></div>
      </li>
    </ul>
  END
  },
  {
  collection_alias: 'p15037coll14',
  name:             'SCRC Books and Pamphlets',
  priority:         131,
  is_private:       false,
  allowed_ip_addresses: "",
  featured:         "No",
  custom_url:       '',
  is_custom_landing_page: false,
  is_format_based:  true,
  finding_aid_link: 'http://example.com/finding_aid/p15037coll14',
  finding_aid_title:'SCRC Books and Pamphlets',
  catalog_record_link:'http://example.com/catalog_record/p15037coll14',
  catalog_record_title:'SCRC Books and Pamphlets',
  short_description: "SCRC Books and Pamphlets digital collection contains pamphlets and related materials from holdings in the Special Collections Research Center.",
  description:      <<-END.gsub(/^ {6}/, '')
    <p>The SCRC Books and Pamphlets digital collection contains pamphlets and related materials from holdings in the Special Collections Research Center (SCRC). Some of the objects in this collection are better contextualized in the following featured collection(s):</p>
    <ul>
      <li>
        <div class="cdm_style" style="margin-top: 10px;"><a href="http://northerncity.library.temple.edu/">Civil Rights in a Northern City: Philadelphia</a></div>
      </li>
    </ul>
    <ul>
      <li>
        <div class="cdm_style" style="margin-top: 10px;"><a href="/cdm/ywcamain/"> YWCA Philadelphia Branches</a></div>
      </li>
    </ul>
    <p>Other sets in this collection: &nbsp;</p>
    <ul>
      <li>
        <div class="cdm_style"><a href="/cdm/search/collection/p15037coll14/searchterm/Beth%20Heinly%20Zine%20Collection/field/digitb/mode/all/conn/and/order/title">Beth Heinly Zine Collection</a></div>
      </li>
    </ul>
  END
  },
  {
  collection_alias: 'p16002coll7',
  name:             'Blockson Ephemera',
  priority:         111,
  is_private:       true,
  allowed_ip_addresses: "",
  featured:         "No",
  custom_url:       '',
  is_custom_landing_page: false,
  is_format_based:  true,
  finding_aid_link: 'http://example.com/finding_aid/p16002coll7',
  finding_aid_title:'Blockson Ephemera',
  catalog_record_link:'http://example.com/catalog_record/p16002coll7',
  catalog_record_title:'Blockson Ephemera',
  short_description: "Maps and lithographs from holdings in the Charles L. Blockson Afro-American Collection.",
  description:      <<-END.gsub(/^ {6}/, '')
    <p class="cdm_style" style="margin-top: 10px;">The Blockson Ephemera digital collection contains maps and lithographs from holdings in the Charles L. Blockson Afro-American Collection. Some of the objects in this collection are better contextualized in the following featured collection(s):
    </p>
    <ul>
      <li>
        <div class="cdm_style" style="margin-top: 10px;"><a href="http://stillfamily.library.temple.edu">William Still: An African-American Abolitionist</a></div>
      </li>
    </ul>
  END
  },
  {
  collection_alias: 'private001',
  name:             'Private Test Collection',
  thumbnail_url:    'logo.png',
  image_url:        'http://digital.library.temple.edu/ui/custom/default/collection/coll_p15037coll1/images/Sheet_Music_Widescreen_Border.jpg',
  priority:         0,
  is_private:       true,
  allowed_ip_addresses: "",
  featured:         "Yes",
  custom_url:       '',
  is_custom_landing_page: false,
  is_format_based:  false,
  finding_aid_link: 'http://example.com/finding_aid/private001',
  finding_aid_title:'Private Test Collection',
  catalog_record_link:'http://example.com/catalog_record/private001',
  catalog_record_title:'Private Test Collection',
  short_description: "Test collection.",
  description:      <<-END.gsub(/^ {6}/, '')
      <p><span>This is a fictitous collection to test restricted access</p>
    END
  }

]

collections.each do |collection|
  DigitalCollection.create(collection)
end

User.delete_all;

users = [
{
  email: "user@example.com",
  password: "tulcdmUser",
  password_confirmation: "tulcdmUser",
},
{
  email: "archivist1@example.com",
  password: "tulcdmArchivist",
  password_confirmation: "tulcdmArchivist",
},
{
  email: "admin@example.com",
  password: "tulcdmAdmin",
  password_confirmation: "tulcdmAdmin",
}
]

users.each do |user|
User.create(user)
end
