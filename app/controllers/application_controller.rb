class ApplicationController < ActionController::Base

before_action :authenticate_user!, except: [:index, :about, :show]

protect_from_forgery

end
