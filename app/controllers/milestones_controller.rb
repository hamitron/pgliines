class MilestonesController < ApplicationController

def create
	@user = current_user
	@milestone = @user.milestones.build(milestone_params)
	if @milestone.save
		flash[:notice] = "Milestone Created"
		redirect_to root_path
	else
		redirect_to root_path
		flash[:notice] = "Error"
	end
end

def edit 
	@milestone.find(params[:id])
end

def update
   @milestone = Milestone.find(params[:id])
    @milestone.update_attributes(params.require(:milestone).permit(:name, :value))
    if @milestone.save
      flash[:notice] = "Milestone Updated"
      redirect_to root_path
    else
    	flash[:notice] = "Error"
      render 'edit'
    end
end

private

	def milestone_params
		params.require(:milestone).permit(:name, :value, :track_id)	
	end


end
