require 'spec_helper'

describe "tasks/edit" do
  before(:each) do
    @task = assign(:task, stub_model(Task,
      :title => "MyString",
      :short_title => "MyString",
      :description => "MyText",
      :owner_id => 1,
      :is_complete => false,
      :order => 1,
      :milestone_id => 1
    ))
  end

  it "renders the edit task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tasks_path(@task), :method => "post" do
      assert_select "input#task_title", :name => "task[title]"
      assert_select "input#task_short_title", :name => "task[short_title]"
      assert_select "textarea#task_description", :name => "task[description]"
      assert_select "input#task_owner_id", :name => "task[owner_id]"
      assert_select "input#task_is_complete", :name => "task[is_complete]"
      assert_select "input#task_order", :name => "task[order]"
      assert_select "input#task_milestone_id", :name => "task[milestone_id]"
    end
  end
end
