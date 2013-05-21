require 'spec_helper'

describe "people/new" do
  before(:each) do
    assign(:person, stub_model(Person,
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :is_active => false,
      :startup_id => 1
    ).as_new_record)
  end

  it "renders new person form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => people_path, :method => "post" do
      assert_select "input#person_first_name", :name => "person[first_name]"
      assert_select "input#person_last_name", :name => "person[last_name]"
      assert_select "input#person_email", :name => "person[email]"
      assert_select "input#person_is_active", :name => "person[is_active]"
      assert_select "input#person_startup_id", :name => "person[startup_id]"
    end
  end
end
