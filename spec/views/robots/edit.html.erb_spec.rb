require 'spec_helper'

describe "robots/edit" do
  before(:each) do
    @robot = assign(:robot, stub_model(Robot,
      :x_coordinate => 1,
      :y_coordinate => 1,
      :orientation => "MyString"
    ))
  end

  it "renders the edit robot form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", robot_path(@robot), "post" do
      assert_select "input#robot_x_coordinat[name=?]", "robot[x_coordinat]"
      assert_select "input#robot_y_coordinate[name=?]", "robot[y_coordinate]"
      assert_select "input#robot_oreintation[name=?]", "robot[oreintation]"
    end
  end
end
