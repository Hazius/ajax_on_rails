require 'spec_helper'

describe "managers/index" do
  before(:each) do
    assign(:managers, [
      stub_model(Manager,
        :email => "Email"
      ),
      stub_model(Manager,
        :email => "Email"
      )
    ])
  end

  it "renders a list of managers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
