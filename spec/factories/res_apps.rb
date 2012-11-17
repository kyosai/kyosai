# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :res_app, :class => 'Res::App' do
    name "MyString"
    identifier "MyString"
    third_party false
  end
end
