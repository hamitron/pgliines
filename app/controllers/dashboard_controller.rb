class DashboardController < ApplicationController

def index

	@users = User.all
	#only shows tracks that have milestones and stones
	@tracks = Track.joins(:milestones,:stones).uniq

end




end
