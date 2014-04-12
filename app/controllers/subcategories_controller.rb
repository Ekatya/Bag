class SubcategoriesController < ApplicationController
  

  def show
  	max_select=params[:max_zena]
	max_select='' if !max_select 
	min_select=params[:min_zena]
	min_select=0 if !min_select 

  	@category_id=params[:id2]
  	@categories=Category.all
  	@subcategory_id=params[:id]
  	@subcategories=Subcategory.all.where('category_id =?', @category_id)
  	products_without_paginate=Product.where('subcategory_id =? and price<=? and price>=?', params[:id], max_select, min_select)
  	@products=products_without_paginate.paginate(:page => params[:page], :per_page => Number_product_2)
  	@max_zena=max_zena(products_without_paginate)
    @min_zena=min_zena(products_without_paginate)
  end
 


 end
