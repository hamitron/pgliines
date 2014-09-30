class Milestone < ActiveRecord::Base
  

  belongs_to :user, touch: true

  acts_as_list scope: :user
  has_attached_file :image

  validates_attachment_content_type :image, content_type: ["image/jpg","image/jpeg", "image/png", "image/gif", "image/svg"]
  validates_presence_of :name
  validates_presence_of :description



end


