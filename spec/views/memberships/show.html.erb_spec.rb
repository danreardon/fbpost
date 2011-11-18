require 'spec_helper'

describe "memberships/show.html.erb" do
  before(:each) do
    @membership = assign(:membership, stub_model(Membership,
      :mem_type => "Mem Type",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Mem Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
