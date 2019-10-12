require 'rails_helper'

RSpec.describe "notes/new", type: :view do
  before(:each) do
    assign(:note, Note.new(
      :deviceID => 1,
      :description => "MyText"
    ))
  end

  it "renders new note form" do
    render

    assert_select "form[action=?][method=?]", notes_path, "post" do

      assert_select "input#note_deviceID[name=?]", "note[deviceID]"

      assert_select "textarea#note_description[name=?]", "note[description]"
    end
  end
end
