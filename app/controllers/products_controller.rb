class ProductsController < ApplicationController
	
	def index
	 
	end

	def show
		@categories=Category.all

		@product=Product.where('id =?', params[:id])

@product.each do |prod|
@category_id=prod.category_id
@subcategory_id=prod.subcategory_id
@subcategories=Subcategory.all.where('category_id =?', @category_id)
end
	#@category_id=@product.category_id
  	#@categories=Category.all
  	#@subcategory_id=@product.subcategory_id
  	#@subcategories=Subcategory.all.where('category_id =?', @category_id)

    end
end
