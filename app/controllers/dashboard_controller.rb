class DashboardController < ApplicationController

def index
if logged_in?
	@tracks = Track.where(user_id: current_user.id).joins(:milestones,:stones).uniq
else
	@users = User.all
	#only shows tracks that have milestones and stones
	@tracks = Track.joins(:milestones,:stones).uniq
end

end




end
