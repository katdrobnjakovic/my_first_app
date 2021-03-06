class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def deny_access_for_non_admins #could use authenticate_user! to see if a user is logged in
  	if current_user.nil?
  		redirect_to root_path #use redirct to because it halts execution and all code below it does not get executed
  	else
  		if !current_user.is_role_by_name("admin")
  			redirect_to root_path
  		end
  	end

  end
end
