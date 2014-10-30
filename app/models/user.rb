class User < ActiveRecord::Base
	has_many :stones, through: :tracks
	has_many :milestones, through: :tracks
	has_many :tracks

	has_secure_password 
end
