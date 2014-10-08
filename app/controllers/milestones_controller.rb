class MilestonesController < ApplicationController 
	before_filter :get_twiine
	def get_twiine
		@twiine = Twiine.find(params[:twiine_id])
	end

	def show 
		@milestone = @twiine.milestones.find(params[:id])
	end
	def create
		@twiine = Twiine.find(params[:twiine_id])
		@milestone = @twiine.milestones.new(milestone_params)
			if @milestone.save
			redirect_to user_path(current_user.id)
		else 
			render 'new'
		end
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
		m = @twiine.milestones.find(params[:id])
		m.destroy
		redirect_to user_path(current_user.id)
		
	end


private

	def milestone_params
		params.require(:milestone).permit(:name, :description, :image, :project, :position)
	end


end

