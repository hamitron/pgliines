class UsersController < ApplicationController

	def index
    @users = User.all
    @milestones = Milestone.all
  end


  def new
    @user = User.new
  end
 
  def create
    @user = User.new(params.require(:user).permit(:name, :age, :email, :password, :image))
      if @user.save
        redirect_to new_session_path       
      else
        render "new"
       end 
  end

  def show
    @user = User.find(params[:id])
    @milestones = Milestone.where(user_id: @user.id)
    @milestones.build
    @projects = Milestone.where(params[:project])

  end


  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update_attributes(params.require(:user).permit(:name, :age, :specialty, :email, :image))
    if @user.save
      redirect_to user_path
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy

    redirect_to users_path
  end
def user_params
    params.require(:user).permit(:name, :email, :password,
      # These availabilities_attributes are because we had an
      # accepts_nested_attributes_for :milestones back in the
      # User model
     milestones_attributes: [:id, :name, :description, :image])
  end
  
end
