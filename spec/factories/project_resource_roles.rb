# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project_resource_role do
    association(:project_resource)
    able_to_read false
    able_to_edit false
    able_to_create false
    able_to_delete false
    able_to_manage false
  end
end
