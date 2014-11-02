class Stone < ActiveRecord::Base
  belongs_to :user
  belongs_to :track

  has_attached_file :image, :default_url => "/assets/missing.png", styles: {thumb: "100x100#"}
  
  validates_attachment :image, :content_type => { :content_type => "image/jpeg" }
end
