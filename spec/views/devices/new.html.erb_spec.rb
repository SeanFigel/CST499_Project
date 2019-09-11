require 'rails_helper'

RSpec.describe "devices/new", type: :view do
  before(:each) do
    assign(:device, Device.new(
      :staffId => 1,
      :OS => "MyString",
      :CPU => "MyString",
      :RAM => 1,
      :Model => "MyString"
    ))
  end

  it "renders new device form" do
    render

    assert_select "form[action=?][method=?]", devices_path, "post" do

      assert_select "input#device_staffId[name=?]", "device[staffId]"

      assert_select "input#device_OS[name=?]", "device[OS]"

      assert_select "input#device_CPU[name=?]", "device[CPU]"

      assert_select "input#device_RAM[name=?]", "device[RAM]"

      assert_select "input#device_Model[name=?]", "device[Model]"
    end
  end
end
