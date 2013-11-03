# Read about factories at https://github.com/thoughtbot/factory_girl

require 'faker'
require 'factory_girl'

FactoryGirl.define do
	factory :user do
		email     {Faker::Internet.email}
		password  "password"
	end
end
