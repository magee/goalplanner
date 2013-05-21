require 'spec_helper'

describe "startups/edit" do
  before(:each) do
    @startup = assign(:startup, stub_model(Startup,
      :name => "MyString"
    ))
  end

  it "renders the edit startup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => startups_path(@startup), :method => "post" do
      assert_select "input#startup_name", :name => "startup[name]"
    end
  end
end
