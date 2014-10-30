class User < ActiveRecord::Base
	has_many :stones
	has_many :milestones
	has_many :tracks

	has_secure_password 
end
