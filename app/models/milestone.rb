class Milestone < ActiveRecord::Base
  
  belongs_to :twiine

  acts_as_list scope: :twiine
  has_attached_file :image

  validates_attachment_content_type :image, content_type: ["image/jpg","image/jpeg", "image/png", "image/gif", "image/svg"]
  validates_presence_of :name
  validates_presence_of :description


def move_milestone_up
 		@milestone = Milestone.find(params[:id])
 		@milestone.move_higher
 		redirect_to user_path(current_user.id)
end

def move_milestone_down
	   	@milestone = Milestone.find(params[:id])
 		@milestone.move_lower
 		redirect_to user_path(current_user.id)
end

end


