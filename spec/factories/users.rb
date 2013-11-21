# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "User#{n}@test.org"}
    password "blablablablablalbalba"
  end
end
