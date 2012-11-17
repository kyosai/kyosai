# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :res_page, :class => 'Res::Page' do
    project_id 1
    title "MyString"
    content "MyText"
  end
end
