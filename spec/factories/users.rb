# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    first_name 'John'
    last_name 'Doe'
    username 'johndoe_2'
    sequence(:email) {|n| "johndoe#{n}@gmail.com" }
  end
end
