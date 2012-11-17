# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :res_comment, :class => 'Res::Comment' do
    res_id 1
    res_identifier "MyString"
    message "MyText"
    reply_to 1
    user_id 1
  end
end
