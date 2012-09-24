require 'spec_helper'

describe Order do

  before do
    @order = Order.new(item: "flowers", price: 14.99, sender: "Prav", recipient: "Vid")
  end


  subject { @order }

  it { should respond_to(:item) }
  it { should respond_to(:price) }
  it { should respond_to(:sender) }
  it { should respond_to(:recipient) }

  it { should be_valid }

  describe "when item is not present" do
    before { @order.item = " " }
    it { should_not be_valid }
  end

  describe "when sender is not present" do
    before { @order.sender = " " }
    it { should_not be_valid }
  end

  describe "when recipient is not present" do
    before { @order.recipient = " " }
    it { should_not be_valid }
  end

  describe "when sender name is too long" do
    before { @order.sender = "a" * 51 }
    it { should_not be_valid }
  end

  describe "when recipient name is too long" do
    before { @order.recipient = "a" * 51 }
    it { should_not be_valid }
  end



end
