require 'factory_girl'
require 'faker'

puts 'Add 100 dummy user'

(1..100).each do |i|
  FactoryGirl.create(:user, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Lorem.characters(10), email: Faker::Internet.email)
end

