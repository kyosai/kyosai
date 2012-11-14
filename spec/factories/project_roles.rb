# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project_role do
    association(:project)
    name "MyString"
  end
end
