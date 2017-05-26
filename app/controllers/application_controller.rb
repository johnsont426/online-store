class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include Pundit
 

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

	private

	def user_not_authorized
	  flash[:warning] = "You are not authorized to perform this action."
	  redirect_to(request.referrer || home_path)
	end
end
