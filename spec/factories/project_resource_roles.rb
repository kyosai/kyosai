# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project_resource_role do
    project_id 1
    project_role_id 1
    project_resource_id "MyString"
    manage false
    read false
    edit false
    delete false
  end
end
