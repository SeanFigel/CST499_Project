require 'rails_helper'

RSpec.describe "notes/edit", type: :view do
  before(:each) do
    @note = assign(:note, Note.create!(
      :deviceID => 1,
      :description => "MyText"
    ))
  end

  it "renders the edit note form" do
    render

    assert_select "form[action=?][method=?]", note_path(@note), "post" do

      assert_select "input#note_deviceID[name=?]", "note[deviceID]"

      assert_select "textarea#note_description[name=?]", "note[description]"
    end
  end
end
