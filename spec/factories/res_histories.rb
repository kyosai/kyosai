# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :res_history, :class => 'Res::History' do
    resource_id 1
    resource_type "MyString"
    user_id 1
    action "MyString"
    description "MyString"
  end
end
