# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "person1@example.com"
    password "helloworld"
    password_confirmation "helloworld"
  end
end
