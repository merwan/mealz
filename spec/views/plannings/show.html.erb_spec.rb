require 'spec_helper'

describe "plannings/show" do
  before(:each) do
    @planning = assign(:planning, stub_model(Planning))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
