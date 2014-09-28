class User < ActiveRecord::Base
  
  has_secure_password 
  has_many :milestones
  accepts_nested_attributes_for :milestones
	has_attached_file  :image

  validates_attachment_content_type :image, content_type: ["image/jpg","image/jpeg", "image/png", "image/gif", "image/svg"]
  validates_presence_of :name
  validates_presence_of :email
  validates_uniqueness_of :email

end