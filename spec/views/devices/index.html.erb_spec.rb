require 'rails_helper'

RSpec.describe "devices/index", type: :view do
  before(:each) do
    assign(:devices, [
      Device.create!(
        :staffId => 2,
        :OS => "Os",
        :CPU => "Cpu",
        :RAM => 3,
        :Model => "Model"
      ),
      Device.create!(
        :staffId => 2,
        :OS => "Os",
        :CPU => "Cpu",
        :RAM => 3,
        :Model => "Model"
      )
    ])
  end

  it "renders a list of devices" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Os".to_s, :count => 2
    assert_select "tr>td", :text => "Cpu".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Model".to_s, :count => 2
  end
end
