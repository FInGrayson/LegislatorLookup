class HomeController < ApplicationController
  def index
  end

  def show
    @legislators = Home.zip(params[:zip_code])
  end
end
