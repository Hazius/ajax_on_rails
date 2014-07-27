require 'spec_helper'

describe "Welcome pages" do

  describe "Index page" do
    it "should have the content 'На главную'" do
      visit root_path
      expect(page).to have_title("Ajax on Rails")
      expect(page).to have_content('На главную')
    end
  end

end
