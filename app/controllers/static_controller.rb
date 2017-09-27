class StaticController < ApplicationController
	skip_before_action :authenticate_user!, except: [:logged_in]
  def home
  end

  def logged_in
  end
end
