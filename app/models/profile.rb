class Profile < ActiveRecord::Base
	belongs_to :user
	dragonfly_accessor :pic
end

