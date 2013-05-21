require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :startup_id => 1,
      :user_name => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path(@user), :method => "post" do
      assert_select "input#user_startup_id", :name => "user[startup_id]"
      assert_select "input#user_user_name", :name => "user[user_name]"
    end
  end
end
