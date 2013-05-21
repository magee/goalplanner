require 'spec_helper'

describe "goals/show" do
  before(:each) do
    @goal = assign(:goal, stub_model(Goal,
      :title => "Title",
      :short_title => "Short Title",
      :description => "MyText",
      :is_template => false,
      :startup_id => 1,
      :is_complete => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Short Title/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
    rendered.should match(/1/)
    rendered.should match(/false/)
  end
end
