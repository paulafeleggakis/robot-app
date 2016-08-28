require 'spec_helper'

describe "robots/index" do
  before(:each) do
    assign(:robots, [
      stub_model(Robot,
        :x_coordinat => 1,
        :y_coordinate => 2,
        :oreintation => "Oreintation"
      ),
      stub_model(Robot,
        :x_coordinat => 1,
        :y_coordinate => 2,
        :oreintation => "Oreintation"
      )
    ])
  end

  it "renders a list of robots" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Oreintation".to_s, :count => 2
  end
end
