require 'spec_helper'

describe "startups/new" do
  before(:each) do
    assign(:startup, stub_model(Startup,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new startup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => startups_path, :method => "post" do
      assert_select "input#startup_name", :name => "startup[name]"
    end
  end
end
