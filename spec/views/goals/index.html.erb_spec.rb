require 'spec_helper'

describe "goals/index" do
  before(:each) do
    assign(:goals, [
      stub_model(Goal,
        :title => "Title",
        :short_title => "Short Title",
        :description => "MyText",
        :is_template => false,
        :startup_id => 1,
        :is_complete => false
      ),
      stub_model(Goal,
        :title => "Title",
        :short_title => "Short Title",
        :description => "MyText",
        :is_template => false,
        :startup_id => 1,
        :is_complete => false
      )
    ])
  end

  it "renders a list of goals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Short Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
