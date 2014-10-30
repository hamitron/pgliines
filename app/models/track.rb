class Track < ActiveRecord::Base
  belongs_to :user
  has_many :stones
  has_many :milestones

end
