class CustomerviewController < ApplicationController
  
  def index
    @products = Product.all
  end
end
