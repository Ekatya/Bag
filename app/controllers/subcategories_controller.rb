class SubcategoriesController < ApplicationController
  

  def show
  	@products=Product.where('subcategory_id =?', params[:id]).paginate(:page => params[:page], :per_page => Number_product_2)
  end
 


 end
