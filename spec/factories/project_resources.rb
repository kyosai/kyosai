# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project_resource do
    name "MyString"
    project_id 1
    description "MyText"
  end
end
