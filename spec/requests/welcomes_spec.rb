require 'spec_helper'

describe "Welcome" do

  describe "Flowers" do

    it "should have the h1 'GiftKart'" do
      visit '/welcomes/flowers'
      page.should have_selector('h1', :text => 'GiftKart')
    end


    it "should not have a custom page title" do
      visit '/welcomes/flowers'
      page.should_not have_selector('title', :text => '| Flowers')
    end

  end

  describe "Chocolates" do

    it "should have the h1 'GiftKart'" do
      visit '/welcomes/chocolates'
      page.should have_selector('h1', :text => 'GiftKart')
    end


    it "should not have a custom page title" do
      visit '/welcomes/chocolates'
      page.should_not have_selector('title', :text => '| Chocolates')
    end
  end
end
