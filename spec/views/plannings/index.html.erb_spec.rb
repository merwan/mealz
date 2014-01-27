require 'spec_helper'

describe "plannings/index" do
  before(:each) do
    assign(:plannings, [
      stub_model(Planning),
      stub_model(Planning)
    ])
  end

  it "renders a list of plannings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
