class UsersController < ApplicationController
  
  def index
  end

  def show
  	 @user = User.find(params[:id])
  	 @all_urls = @user.urls
  end

end