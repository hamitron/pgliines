class MilestonesController < ApplicationController 


	def index
		@users = User.all
		@milestones = Milestone.all

	end

	def new
		@milestone = Milestone.new
	end

	def create
		@user = User.find(current_user)
		@milestone = @user.milestones.new(milestone_params)
			if @milestone.save
			redirect_to user_path(current_user.id)
		else 
			render 'new'
		end
	end

	def edit
		@milestone = Milestone.find(params[:id])
		
	end

	def update
		@milestone = Milestone.find(params[:id])
		@milestone.update_attributes(milestone_params)
		if @milestone.save
			redirect_to user_path(current_user.id)
		else
			render 'edit'
		end

	end

	def destroy
		m = Milestone.find(params[:id])
		m.destroy
		redirect_to user_path(current_user.id)
		
	end

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

private

	def milestone_params
		params.require(:milestone).permit(:name, :description, :image, :project, :position)
	end


end

