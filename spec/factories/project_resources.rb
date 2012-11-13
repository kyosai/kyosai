# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project_resource do
    name "MyString"
    description "MyText"
    project_id 1
    third_party false
    identifier "MyString"
  end
end
