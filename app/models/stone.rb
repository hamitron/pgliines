class Stone < ActiveRecord::Base
  belongs_to :user
  belongs_to :track
end