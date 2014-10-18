class TwiinesController < ApplicationController


	def index
		@twiines = Twiine.where(params[current_user.id])
		@user = User.find(current_user.id)
		@milestones = Milestone.where(params[:twiine_id])
	end

	def show
		@twiine = Twiine.find(params[:id])
		@user = User.find(@twiine.user_id)
		@milestone = @twiine.milestones.new
		@milestones = @twiine.milestones.paginate(:page => params[:page], :per_page => 6).order('position ASC')
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

	#this is so you can attach a foreign twiine(one that isn't yours), with yours.
	#using the twiine array attribute that stores tracked twiine ids.

	
private

def twiine_params
	params.require(:twiine).permit(:name, :fulfillment, :category, :image,
		milestones_attributes:[:name, :description, :image, :position, :goal])
end


end
