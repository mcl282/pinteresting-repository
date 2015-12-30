class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  #creating a "configure_permitted_parameters" only if its related to a devise controller

  protected

  def configure_permitted_parameters
   	devise_parameter_sanitizer.for(:sign_up) << :user_name
    #this is for sign_up
	devise_parameter_sanitizer.for(:account_update) << :user_name
    #this is for account update
  end

end
