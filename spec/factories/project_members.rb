# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project_member do
    project_id 1
    user_id 1
    project_role_id 1
    project_roles_mask 1
  end
end
