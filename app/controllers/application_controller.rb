class ApplicationController < ActionController::Base

   before_action :authenticate_user!, except: [:index, :about, :show]
   before_action :configure_permitted_parameters, if: :devise_controller?   

   protect_from_forgery


#PROTECTED
protected

   def after_sign_in_path_for(resource)
      user_path(current_user)       
   end

   def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password, :password_confirmation])
     devise_parameter_sanitizer.permit(:sign_in, keys: [:login, :password, :password_confirmation])
     devise_parameter_sanitizer.permit(:account_update, keys: [:username, :email, :password, :password_confirmation, :current_password])
   end

end
