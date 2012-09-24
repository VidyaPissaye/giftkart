require 'spec_helper'

describe "Order pages" do

  subject { page }

  describe "Checkout page" do
    before { visit checkout_orders_path }

    it { should have_selector('h1',    text: 'Order') }
    it { should_not have_selector 'title', text: '| Checkout' }
  end

  describe "checkout" do

    before { visit checkout_orders_path }

    let(:submit) { "Place Order" }

    describe "with invalid information" do
      it "should not create an order" do
        expect { click_button submit }.not_to change(Order, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "Item",         with: "Flowers"
        fill_in "Price",        with: 14.99
        fill_in "Sender",       with: "Prav"
        fill_in "Recipient",    with: "Vid"
      end

      it "should place an order" do
        expect { click_button submit }.to change(Order, :count).by(1)
      end
    end
  end

  describe "result page" do
    # Code to make a user variable
    let(:order) { FactoryGirl.create(:order) }
    before { visit order_path(order) }

    it { should have_selector('h1',    text: order.item) }
    it { should have_selector('title', text: order.item) }
  end

end