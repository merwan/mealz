require 'spec_helper'

describe "plannings/new" do
  before(:each) do
    assign(:planning, stub_model(Planning).as_new_record)
  end

  it "renders new planning form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", plannings_path, "post" do
    end
  end
end
