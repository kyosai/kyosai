# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    name "MyString"
    description "MyText"
    organization_id 1
    initiator_id 1
  end
end
