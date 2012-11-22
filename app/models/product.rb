class Product < ActiveRecord::Base
  attr_accessible :name, :image, :description, :category_id, :quantity, :cost
  validates :name, :description, :quantity, :cost, :presence => true
  
  belongs_to :category
end
