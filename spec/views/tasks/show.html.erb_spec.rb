require 'spec_helper'

describe "tasks/show" do
  before(:each) do
    @task = assign(:task, stub_model(Task,
      :title => "Title",
      :short_title => "Short Title",
      :description => "MyText",
      :owner_id => 1,
      :is_complete => false,
      :order => 2,
      :milestone_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Short Title/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/false/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
