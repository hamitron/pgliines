class Milestone < ActiveRecord::Base
  belongs_to :user
  belongs_to :track


# this allows the view to only show REMAINING milestones
# once a stone value passes a milestone, that milestone is out of scope

  scope :turned_stone, ->(stone_val) {where("value >= ?", stone_val)}

  validates :user_id, presence: true
end
