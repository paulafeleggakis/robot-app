require 'spec_helper'

describe "robots/new" do
  before(:each) do
    assign(:robot, stub_model(Robot,
      :x_coordinat => 1,
      :y_coordinate => 1,
      :oreintation => "MyString"
    ).as_new_record)
  end

  it "renders new robot form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", robots_path, "post" do
      assert_select "input#robot_x_coordinat[name=?]", "robot[x_coordinat]"
      assert_select "input#robot_y_coordinate[name=?]", "robot[y_coordinate]"
      assert_select "input#robot_oreintation[name=?]", "robot[oreintation]"
    end
  end
end
