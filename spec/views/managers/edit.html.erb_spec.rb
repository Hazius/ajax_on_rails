require 'spec_helper'

describe "managers/edit" do
  before(:each) do
    @manager = assign(:manager, stub_model(Manager,
      :email => "MyString"
    ))
  end

  it "renders the edit manager form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", manager_path(@manager), "post" do
      assert_select "input#manager_email[name=?]", "manager[email]"
    end
  end
end
