class StonesController < ApplicationController

def create
	@stone = Stone.new(stone_params)
	if @stone.save
		flash[:notice] = "Stone Created"
	else
		flash[:notice] = "Error"
	end
end

private

	def stone_params
		params.require(:stone).permit(:shout, :value)	
	end


end
