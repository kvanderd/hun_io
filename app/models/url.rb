class Url < ActiveRecord::Base
	belongs_to :user
  attr_accessible :short, :long, :user_id
end
