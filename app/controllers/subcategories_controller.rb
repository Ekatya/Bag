class SubcategoriesController < ApplicationController
  

  def show
  	@products=Product.all.where('subcategory_id =?', params[:id])
  end
 


 end
