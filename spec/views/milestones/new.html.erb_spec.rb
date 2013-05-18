require 'spec_helper'

describe "milestones/new" do
  before(:each) do
    assign(:milestone, stub_model(Milestone,
      :title => "MyString",
      :short_title => "MyString",
      :description => "MyText",
      :owner_id => 1,
      :percent_complete => 1.5,
      :is_complete => false,
      :order => 1,
      :goal_id => 1,
      :is_template => false
    ).as_new_record)
  end

  it "renders new milestone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => milestones_path, :method => "post" do
      assert_select "input#milestone_title", :name => "milestone[title]"
      assert_select "input#milestone_short_title", :name => "milestone[short_title]"
      assert_select "textarea#milestone_description", :name => "milestone[description]"
      assert_select "input#milestone_owner_id", :name => "milestone[owner_id]"
      assert_select "input#milestone_percent_complete", :name => "milestone[percent_complete]"
      assert_select "input#milestone_is_complete", :name => "milestone[is_complete]"
      assert_select "input#milestone_order", :name => "milestone[order]"
      assert_select "input#milestone_goal_id", :name => "milestone[goal_id]"
      assert_select "input#milestone_is_template", :name => "milestone[is_template]"
    end
  end
end
