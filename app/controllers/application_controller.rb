class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception
	before_filter :configure_permitted_parameters, if: :devise_controller?

	protected

	def configure_permitted_parameters
	 devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :first_name, :last_name, :password) }
	 devise_parameter_sanitizer.for(:account_update)  { |u| u.permit(:email, :first_name, :last_name, :password, :current_password) }
	end
end

# class BreadcumbController < ApplicationController
#   add_breadcrumb "Home", :root_path, :options => { :title => "Home" }
#   add_breadcrumb "My Account", :edit_user_registration_path, :options => { :title => "My Account" }
# 
#   def index
#     add_breadcrumb "index", index_path, :title => "Back to the Index"
#   end
# end
