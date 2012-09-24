FactoryGirl.define do
  factory :user do
    name     "Vidya Pissaye"
    email    "vpissaye@giftkart.com"
    password "giftkart"
    password_confirmation "giftkart"
  end

  factory :order do
    item    "flowers"
    price   19.99
    sender  "Prav"
    recipient "Vid"
  end
end