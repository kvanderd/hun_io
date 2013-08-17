class UrlsController < ApplicationController

  def index
    p "I am in index" * 9
  	@url = Url.new()
    @last_urls = Url.last
  end

  def new
  	@url = Url.new()
    @last_5_urls = Url.last(10).reverse
  end

  def create 
  	short = "http://hun.io/" + SecureRandom.hex(2)

		@url = Url.create!(long: params[:url][:long], short: short)
  
    respond_to do |format|
       format.html {redirect_to urls_url}
       format.js
    end
  end
  
  def show
    url = Url.find(params[:id])
    puts "this is the url" * 70
    ap url
    redirect_to url.long
  end

end
