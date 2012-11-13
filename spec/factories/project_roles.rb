# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project_role do
    prior 1
    name "MyString"
    project_id 1
  end
end
