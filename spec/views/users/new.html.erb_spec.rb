require 'spec_helper'

describe "users/new.html.erb" do
  before(:each) do
    assign(:user, stub_model(User,
      :name => "MyString",
      :email => "MyString",
      :email_confirmation => "MyString",
      :password => "MyString",
      :password_confirmation => "MyString",
      :location => "MyString",
      :facebookid => "MyString",
      :twitterid => "MyString"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path, :method => "post" do
      assert_select "input#user_name", :name => "user[name]"
      assert_select "input#user_email", :name => "user[email]"
      assert_select "input#user_email_confirmation", :name => "user[email_confirmation]"
      assert_select "input#user_password", :name => "user[password]"
      assert_select "input#user_password_confirmation", :name => "user[password_confirmation]"
      assert_select "input#user_location", :name => "user[location]"
      assert_select "input#user_facebookid", :name => "user[facebookid]"
      assert_select "input#user_twitterid", :name => "user[twitterid]"
    end
  end
end
