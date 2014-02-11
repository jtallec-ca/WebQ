class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end

# class BreadcumbController < ApplicationController
#   add_breadcrumb "Home", :root_path, :options => { :title => "Home" }
#   add_breadcrumb "My Account", :edit_user_registration_path, :options => { :title => "My Account" }
# 
#   def index
#     add_breadcrumb "index", index_path, :title => "Back to the Index"
#   end
# end
