require 'spec_helper'

describe "milestones/show" do
  before(:each) do
    @milestone = assign(:milestone, stub_model(Milestone,
      :title => "Title",
      :short_title => "Short Title",
      :description => "MyText",
      :owner_id => 1,
      :percent_complete => 1.5,
      :is_complete => false,
      :order => 2,
      :goal_id => 3,
      :is_template => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Short Title/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/1.5/)
    rendered.should match(/false/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/false/)
  end
end
