class TwiinesController < ApplicationController


	def index
		@twiine = Twiine.find(params[current_user.id])
		@user = User.find(params[:id])
		@milestones = Milestone.where(twiine_id: @twiine.id)
		@milestones.build
	end

	def show
		@twiine = Twiine.find(params[:id])
		@user = User.find(@twiine.user_id)
		@milestone = @twiine.milestones.new
		@milestones = Milestone.where(twiine_id: @twiine.id)
		@milestones.build
	end

	def new
		@user = User.find(current_user)
		@twiine = @user.twiines.new
	end

	def create
		@user = User.find(current_user.id)
		@twiine = @user.twiines.new(twiine_params)
		if @twiine.save
			redirect_to user_path(current_user.id)
		else
			render 'new'
		end

	end

	def destroy
	end

private

def twiine_params
	params.require(:twiine).permit(:name, :fulfillment, :category, :image,
		milestones_attributes:[:name, :description, :image, :position])
end


end
