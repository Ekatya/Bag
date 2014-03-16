class ProductsController < ApplicationController
	def index

		@categories=Category.all

#category=Category.create(name: 'Womans', position: 1)
#subcategory=Subcategory.new(name:'klatchi', position: 2, category_id: 2)
#subcategory.category=category
#subcategory.save

		
		end

	def show


		@subcategories=Subcategory.all.where('category_id =?', params[:id])


	end
end
