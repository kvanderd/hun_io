class UrlsController < ApplicationController

  def index
  	@url = Url.new()
    @last_urls = Url.last
  end

  def new
  	@url = Url.new()
  end

  def create 
  	short = "http://hun.io/" + SecureRandom.hex(2)
		@url = Url.create!(long: params[:url][:long], short: short)
  
    respond_to do |format|
       format.html {redirect_to urls_url}
       format.js
    end
  end


end
