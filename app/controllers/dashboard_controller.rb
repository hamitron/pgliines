class DashboardController < ApplicationController

def index
	if logged_in?
		@tracks = Track.where(user_id: current_user.id).joins(:milestones,:stones).uniq
		@milestone = Milestone.new
		@stone = Stone.new
	else
		@users = User.all
		#only shows tracks that have milestones and stones
		@tracks = Track.joins(:milestones,:stones).uniq.take(4)
	end

end




end
