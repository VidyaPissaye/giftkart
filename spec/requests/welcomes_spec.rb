require 'spec_helper'

describe "Welcome" do

  subject {page}

  describe "Home" do

    before {visit '/welcomes/home'}

    it { should have_selector('h1', :text => 'GiftKart') }
    it { should_not have_selector 'title', text: '| Home' }
  end

  describe "Flowers" do

    before {visit '/welcomes/flowers'}
    it { should have_selector('h1', :text => 'GiftKart')   }
    it { should_not have_selector('title', :text => '| Flowers') }

  end

  describe "Chocolates" do

    before {visit '/welcomes/chocolates'}
    it {should have_selector('h1', :text => 'GiftKart') }
    it {should_not have_selector('title', :text => '| Chocolates') }
  end


  describe "Contact page" do
    before {visit '/welcomes/contact'}
    it {should have_selector('h1', text: 'Contact') }
  end

  describe "About Us" do
    before {visit '/welcomes/about'}
    it {should have_selector('h1', text: 'About Us') }
  end

end
