class FrontendController < ApplicationController
  
  def index
    @section = "home"
    @featured_products = Product.featured
  end
end
