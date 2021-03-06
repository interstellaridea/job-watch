class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhiteList

  before_action :authenticate_user!, except: [:static_home]

  def after_sign_in_path_for(resource)
	  successful_login_path
	end
end
