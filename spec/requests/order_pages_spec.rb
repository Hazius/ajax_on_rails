require 'spec_helper'

describe "Order Pages" do

  describe "orders/new" do
    it "should have the content 'Форма заказа'" do
      visit "/orders/new"
      expect(page).to have_content('Форма заказа')
    end
  end

end
