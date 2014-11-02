class UsersController < ApplicationController

class UsersController < ApplicationController
  

	def index
    @users = User.all
  end


  def new
    @user = User.new
  end
 
  def create
    @user = User.new(user_params)
      if @user.save
        redirect_to new_session_path       
      else
        render "new"
       end 
  end

  def show
    @user = User.find(params[:id])

  end


  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update_attributes(params.require(:user).permit(:name, :email)
    if @user.save
      redirect_to user_path
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy

    redirect_to root_path
  end
def user_params
    params.require(:user).permit(:name, :email, :password)
  end
  
end


end
