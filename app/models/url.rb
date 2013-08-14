class Url < ActiveRecord::Base
	belongs_to :user
  attr_accessible :short, :long
end
