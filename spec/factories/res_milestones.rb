# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :res_milestone, :class => 'Res::Milestone' do
    project_id 1
    creator_id 1
    name "MyString"
    due_time "2012-11-17 22:53:20"
    description "MyText"
    complete false
    complete_at "2012-11-17 22:53:20"
  end
end
