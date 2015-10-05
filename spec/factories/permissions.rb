# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :permission do
    permissions_mask {Faker::Number.number(6)}
    #application_class_id FactoryGirl.build(:application_class).id
    #association :role
  end
end
