require 'spec_helper'

describe "goals/edit" do
  before(:each) do
    @goal = assign(:goal, stub_model(Goal,
      :title => "MyString",
      :short_title => "MyString",
      :description => "MyText",
      :is_template => false,
      :startup_id => 1,
      :is_complete => false
    ))
  end

  it "renders the edit goal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => goals_path(@goal), :method => "post" do
      assert_select "input#goal_title", :name => "goal[title]"
      assert_select "input#goal_short_title", :name => "goal[short_title]"
      assert_select "textarea#goal_description", :name => "goal[description]"
      assert_select "input#goal_is_template", :name => "goal[is_template]"
      assert_select "input#goal_startup_id", :name => "goal[startup_id]"
      assert_select "input#goal_is_complete", :name => "goal[is_complete]"
    end
  end
end
