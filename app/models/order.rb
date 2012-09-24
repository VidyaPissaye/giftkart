class Order < ActiveRecord::Base

  belongs_to :user

  attr_accessible :item, :price, :sender, :recipient

  validates_presence_of :item, :price
  validates :sender, :presence => true, :length => { :maximum => 50 }
  validates :recipient, :presence => true, :length => { :maximum => 50 }
  validate :price_has_to_be_greater_than_minimum

  def price_has_to_be_greater_than_minimum
    errors.add(:price, "price has to be greater than 0.01") if !price.blank? and price <= 0.01
  end

end
