class FrontendController < ApplicationController
  
  def index
    @section = "home"
    @products = Product.all
  end
end
