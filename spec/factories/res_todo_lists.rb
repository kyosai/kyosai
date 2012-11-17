# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :res_todo_list, :class => 'Res::TodoList' do
    project_id 1
    due_time 1
    title "MyString"
    message "MyText"
    user_id 1
  end
end
