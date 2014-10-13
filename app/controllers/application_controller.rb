class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
helper_method :move_milestone_down
helper_method :move_milestone_up
  helper_method :current_user
  
  def current_user

  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  

	def move_milestone_up
		@twiine = Twiine.find(params[:twiine_id])
		m= @twiine.milestones.find(params[:id])
		m.move_higher
		redirect_to twiine_path(@twiine.id)
		
	end
	
	def move_milestone_down
		@twiine = Twiine.find(params[:twiine_id])
		m= @twiine.milestones.find(params[:id])
		m.move_lower
		redirect_to twiine_path(@twiine.id)
		
	end
	

end
