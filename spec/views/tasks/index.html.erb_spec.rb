require 'spec_helper'

describe "tasks/index" do
  before(:each) do
    assign(:tasks, [
      stub_model(Task,
        :title => "Title",
        :short_title => "Short Title",
        :description => "MyText",
        :owner_id => 1,
        :is_complete => false,
        :order => 2,
        :milestone_id => 3
      ),
      stub_model(Task,
        :title => "Title",
        :short_title => "Short Title",
        :description => "MyText",
        :owner_id => 1,
        :is_complete => false,
        :order => 2,
        :milestone_id => 3
      )
    ])
  end

  it "renders a list of tasks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Short Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
