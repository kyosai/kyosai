# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :res_calendar, :class => 'Res::Calendar' do
    project_id 1
    time_at "2012-11-15 05:00:31"
    user_id 1
    message "MyText"
  end
end
