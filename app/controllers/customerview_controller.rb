class CustomerviewController < ApplicationController
  
  def index
    @products = Product.all
    @categories = Category.order('name')
  end
  
  def search
    
  end
  
  def search_results
    @keywords = params[:keywords]
    @products = Product.where('name LIKE ?', "%#{@keywords}%")
  end
  
  def categories
    @category = Category.find(params[:id])
    @products = @category.products
  end
end
