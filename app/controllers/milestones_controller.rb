class MilestonesController < ApplicationController 

	def show 
		@twiine = Twiine.find(params[:twiine_id])
		@milestone = @twiine.milestones.find(params[:id])
	end
	def create
		@twiine = Twiine.find(params[:twiine_id])
		@milestone = @twiine.milestones.new(params.require(:milestone).permit(:name, :description, :image, :project, :position, :goal))
			if @milestone.save
			redirect_to twiine_path(@twiine.id)
		else 
			render 'new'
		end
	end


	def update
		@twiine = Twiine.find(params[:twiine_id])
		@milestone = @twiine.milestones.find(params[:id])
		@milestone.update_attributes(params.require(:milestone).permit(:name, :description, :image, :project, :position, :goal))
		if @milestone.save
			redirect_to user_path(current_user.id)
		else
			render 'edit'
		end

	end

	def destroy
		@twiine = Twiine.find(params[:twiine_id])
		m= @twiine.milestones.find(params[:id])
		m.destroy
		redirect_to twiine_path(@twiine.id)
		
		
	end




end

