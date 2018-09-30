class ApplicationController < ActionController::Base

before_action :authenticate_user!, except: [:index, :about, :show]

protect_from_forgery


protected
    def after_sign_in_path_for(resource)
        user_path(current_user)       
    end

end
