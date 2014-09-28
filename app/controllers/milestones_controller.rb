class MilestonesController < ApplicationController 


	def index
		@users = User.all
		@milestones = Milestone.all

	end

	def new
		@milestone = Milestone.new
	end

	def create

		@milestone = Milestone.new(params.require(:milestone).permit(:name, :description, :image, :project, :id))
		@milestone.user_id = current_user.id
			@milestone.save
			redirect_to user_path(current_user.id)
		
	end

	def edit
		@milestone = Milestone.find(params[:id])
		
	end

	def update
		@milestone = Milestone.find(params[:id])
		@milestone.update_attributes(params.require(:milestone).permit(:name, :description, :image, :project))
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

	


end

