require 'spec_helper'

describe "Order pages" do

  subject { page }

  describe "Checkout page" do
    before { visit '/orders/checkout' }

    it { should have_selector('h1',    text: 'Order') }
    it { should_not have_selector 'title', text: '| Checkout' }
  end
end