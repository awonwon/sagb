class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def check_session
  	if session[:member_id] 
  		@current_member = Member.find session[:member_id]
  else
    redirect_to root_path
  	end
  end
end
