# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :res_git, :class => 'Res::Git' do
    project_id 1
    url "MyString"
    description "MyText"
    name "MyString"
  end
end
