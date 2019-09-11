require 'rails_helper'

RSpec.describe "devices/edit", type: :view do
  before(:each) do
    @device = assign(:device, Device.create!(
      :staffId => 1,
      :OS => "MyString",
      :CPU => "MyString",
      :RAM => 1,
      :Model => "MyString"
    ))
  end

  it "renders the edit device form" do
    render

    assert_select "form[action=?][method=?]", device_path(@device), "post" do

      assert_select "input#device_staffId[name=?]", "device[staffId]"

      assert_select "input#device_OS[name=?]", "device[OS]"

      assert_select "input#device_CPU[name=?]", "device[CPU]"

      assert_select "input#device_RAM[name=?]", "device[RAM]"

      assert_select "input#device_Model[name=?]", "device[Model]"
    end
  end
end
