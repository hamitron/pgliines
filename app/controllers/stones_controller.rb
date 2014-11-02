class StonesController < ApplicationController

def create
	@user = current_user
	@stone = @user.stones.build(stone_params)
	if @stone.save
		flash[:notice] = "Stone Created"
		redirect_to root_path
	else
		flash[:notice] = "Error"
		redirect_to root_path
	end
end

def update
   @stone = Stone.find(params[:id])
    @stone.update_attributes(params.require(:stone).permit(:shout, :value))
    if @stone.save
      flash[:notice] = "Stone Updated"
      redirect_to root_path
    else
    	flash[:notice] = "Error"
      render 'edit'
    end
end

private

	def stone_params
		params.require(:stone).permit(:shout, :value, :track_id, :image)	
	end


end
