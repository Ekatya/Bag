
class CategoriesController < ApplicationController
	def index
		@categories=Category.all
	end

	def show
		@subcategories=Subcategory.all.where('category_id =?', params[:id])
        @products=Product.where('category_id =?', params[:id]).paginate(:page => params[:page], :per_page => Number_product_1) 

        #Post.paginate(:page => params[:page], :per_page => 30)   
	end



end
