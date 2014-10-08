class Twiine < ActiveRecord::Base
  belongs_to :user
  has_many :milestones, -> {order("position ASC")}
  accepts_nested_attributes_for :milestones
  has_attached_file  :image
  validates_attachment_content_type :image, content_type: ["image/jpg","image/jpeg", "image/png", "image/gif", "image/svg"]


end
