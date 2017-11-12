require 'spec_helper'

describe "attendees/show" do
  before(:each) do
    @attendee = assign(:attendee, stub_model(Attendee,
      :name => "Name",
      :email => "Email",
      :attending => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/false/)
  end
end
