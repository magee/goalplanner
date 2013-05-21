require 'spec_helper'

describe "people/edit" do
  before(:each) do
    @person = assign(:person, stub_model(Person,
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :is_active => false,
      :startup_id => 1
    ))
  end

  it "renders the edit person form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => people_path(@person), :method => "post" do
      assert_select "input#person_first_name", :name => "person[first_name]"
      assert_select "input#person_last_name", :name => "person[last_name]"
      assert_select "input#person_email", :name => "person[email]"
      assert_select "input#person_is_active", :name => "person[is_active]"
      assert_select "input#person_startup_id", :name => "person[startup_id]"
    end
  end
end
