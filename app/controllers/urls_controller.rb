class UrlsController < ApplicationController

  def index
  	@url = Url.new()
    @last_urls = Url.last
  end

  def new
  	@url = Url.new()
    @last_5_urls = Url.last(10).reverse
  end

  def create 
  	short = "http://www.hun.io/" + SecureRandom.hex(2)
    if current_user
  		@url = Url.create!(long: params[:url][:long], short: short)
      @url.update_attributes(user_id: current_user.id)
    else
      @url = Url.create!(long: params[:url][:long], short: short)
    end
    respond_to do |format|
       format.html {redirect_to urls_url}
       format.js
    end
  end
  
  def show
    url = Url.find(params[:id])
    redirect_to url.long
  end

end
