require 'rails_helper'

RSpec.describe "devices/show", type: :view do
  before(:each) do
    @device = assign(:device, Device.create!(
      :staffId => 2,
      :OS => "Os",
      :CPU => "Cpu",
      :RAM => 3,
      :Model => "Model"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Os/)
    expect(rendered).to match(/Cpu/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Model/)
  end
end
