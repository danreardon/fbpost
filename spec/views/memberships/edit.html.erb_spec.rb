require 'spec_helper'

describe "memberships/edit.html.erb" do
  before(:each) do
    @membership = assign(:membership, stub_model(Membership,
      :mem_type => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit membership form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => memberships_path(@membership), :method => "post" do
      assert_select "input#membership_mem_type", :name => "membership[mem_type]"
      assert_select "input#membership_user_id", :name => "membership[user_id]"
    end
  end
end