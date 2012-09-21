require 'spec_helper'

describe "Welcome" do

  describe "Home" do

    it "should have the h1 'GiftKart'" do
      visit home_path
      page.should have_selector('h1', :text => 'GiftKart')
    end


    it "should not have a custom page title" do
      visit home_path
      page.should_not have_selector('title', :text => '| Home')
    end
  end

  describe "Flowers" do

    it "should have the h1 'GiftKart'" do
      visit flowers_path
      page.should have_selector('h1', :text => 'GiftKart')
    end


    it "should not have a custom page title" do
      visit flowers_path
      page.should_not have_selector('title', :text => '| Flowers')
    end

  end

  describe "Chocolates" do

    it "should have the h1 'GiftKart'" do
      visit chocolates_path
      page.should have_selector('h1', :text => 'GiftKart')
    end


    it "should not have a custom page title" do
      visit chocolates_path
      page.should_not have_selector('title', :text => '| Chocolates')
    end
  end


  describe "Contact page" do

    it "should have the h1 'Contact'" do
      visit contact_path
      page.should have_selector('h1', text: 'Contact')
    end

  end

end
