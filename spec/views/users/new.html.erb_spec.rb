require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :startup_id => 1,
      :user_name => "MyString"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path, :method => "post" do
      assert_select "input#user_startup_id", :name => "user[startup_id]"
      assert_select "input#user_user_name", :name => "user[user_name]"
    end
  end
end
