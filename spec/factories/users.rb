# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:name){|n| "user #{n}"}
    sequence(:email){|n| "user#{n}@mail.com"}
    association(:organization)
  end
end
