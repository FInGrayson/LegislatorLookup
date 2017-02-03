class HomeController < ApplicationController
  def index
  end

  def show
    zip = params[:zip_code]
    @legislators = HTTParty.get("https://congress.api.sunlightfoundation.com/legislators/locate?zip=#{zip}")
  end
end
