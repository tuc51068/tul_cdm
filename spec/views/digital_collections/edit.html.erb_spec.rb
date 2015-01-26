require 'rails_helper'

RSpec.describe "digital_collections/edit", :type => :view do
  before(:each) do
    @digital_collection = assign(:digital_collection, DigitalCollection.create!(
      :collection_alias => "MyString",
      :name => "MyString",
      :image_url => "MyString",
      :thumbnail_url => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit digital_collection form" do
    render

    assert_select "form[action=?][method=?]", digital_collection_path(@digital_collection), "post" do

      assert_select "input#digital_collection_collection_alias[name=?]", "digital_collection[collection_alias]"

      assert_select "input#digital_collection_name[name=?]", "digital_collection[name]"

      assert_select "input#digital_collection_image_url[name=?]", "digital_collection[image_url]"

      assert_select "input#digital_collection_thumbnail_url[name=?]", "digital_collection[thumbnail_url]"

      assert_select "textarea#digital_collection_description[name=?]", "digital_collection[description]"
    end
  end
end