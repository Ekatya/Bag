class SubcategoriesController < ApplicationController
  

  def show
  	@category_id=params[:id2]
  	@categories=Category.all
  	@subcategory_id=params[:id]
  	@subcategories=Subcategory.all.where('category_id =?', @category_id)
  	@products=Product.where('subcategory_id =?', params[:id]).paginate(:page => params[:page], :per_page => Number_product_2)
  end
 


 end
