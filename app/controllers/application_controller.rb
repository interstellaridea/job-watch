class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhiteList

  def after_sign_in_path_for(resource)
	  successful_login_path
	end
end
