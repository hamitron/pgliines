class DashboardController < ApplicationController

def index

	@users = User.all
	@tracks = Track.joins(:milestones, :stones).uniq

end




end
