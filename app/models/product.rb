class Product < ActiveRecord::Base
  attr_accessible :name, :image, :description, :category, :quantity, :cost
  validates :name, :description, :quantity, :cost, :presence => true
end
