class Milestone < ActiveRecord::Base
  belongs_to :user
  belongs_to :track

  scope :turned_stone, ->(stone_val) {where("value > ?", stone_val)}
end
