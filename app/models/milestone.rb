class Milestone < ActiveRecord::Base
  	
  belongs_to :twiine

  acts_as_list scope: :twiine
  has_attached_file :image, :default => "assets/images/original/missing.png", :styles => {
  	:thumbnail => "300 x 300",
  }

  validates_attachment_content_type :image, content_type: ["image/jpg","image/jpeg", "image/png", "image/gif", "image/svg"]
  validates_presence_of :name
  validates_presence_of :description




end


