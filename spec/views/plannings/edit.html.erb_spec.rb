require 'spec_helper'

describe "plannings/edit" do
  before(:each) do
    @planning = assign(:planning, stub_model(Planning))
  end

  it "renders the edit planning form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", planning_path(@planning), "post" do
    end
  end
end
