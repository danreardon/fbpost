require 'spec_helper'

describe "posts/edit.html.erb" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :membership_id => 1,
      :title => "MyString",
      :content => "MyString"
    ))
  end

  it "renders the edit post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => posts_path(@post), :method => "post" do
      assert_select "input#post_membership_id", :name => "post[membership_id]"
      assert_select "input#post_title", :name => "post[title]"
      assert_select "input#post_content", :name => "post[content]"
    end
  end
end
