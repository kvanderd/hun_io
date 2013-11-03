# Read about factories at https://github.com/thoughtbot/factory_girl
require 'factory_girl'


FactoryGirl.define do
  factory :url do
  	short "http://www.hun.io/2234"
  	long  "http://www.target.com/lovelovelovelove/"
  end
end
