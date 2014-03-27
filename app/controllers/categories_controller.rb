
class CategoriesController < ApplicationController
	def index
		@categories=Category.all
	end

	def show
		@subcategories=Subcategory.all.where('category_id =?', params[:id])
        @products=Product.all.where('category_id =?', params[:id])	    
	end



end
