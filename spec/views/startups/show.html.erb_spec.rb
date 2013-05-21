require 'spec_helper'

describe "startups/show" do
  before(:each) do
    @startup = assign(:startup, stub_model(Startup,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
