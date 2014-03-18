class Product < ActiveRecord::Base

	belongs_to :category
	belongs_to :subcategory

	#validates_presence_of :name, :subcategory_id, :category_id, 

end
