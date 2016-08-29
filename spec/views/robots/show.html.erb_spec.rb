require 'spec_helper'

describe "robots/show" do
  before(:each) do
    @robot = assign(:robot, stub_model(Robot,
      :x_coordinate => 1,
      :y_coordinate => 2,
      :orientation => "Orientation"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Oreintation/)
  end
end
