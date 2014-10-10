class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:home]
  def welcome
    if user_signed_in?
      redirect_to home_path
    end
  end

  def home
  	@users = User.all
  	@user = current_user
  end
end
