# -*- coding: utf-8 -*-
class CategoriesController < ApplicationController
	def index
		@categories=Category.all
	end

	def show

		if params[:select_max_zena] or params[:select_min_zena] 
		select=true
		max_select=params[:select_max_zena]
		min_select=params[:select_min_zena]
		@max_zena=params[:max_zena]
		@min_zena=params[:min_zena]
		else
		select=false # при первом запуске
		max_select=''
		min_select=0
		end

		@category_id=params[:id]
		@categories=Category.all
		@subcategories=Subcategory.all.where('category_id =?', params[:id])
		products_without_paginate=Product.where('category_id =? and price<=? and price>=?', params[:id], max_select, min_select).order('price')
		products_without_paginate=products_without_paginate.where('color_id==?', params[:color]) if params[:color]
        @products=products_without_paginate.paginate(:page => params[:page], :per_page => Number_product_1) 

        if select==false # при первом запуске
   		@max_zena=max_zena(products_without_paginate)
        @min_zena=min_zena(products_without_paginate)
    	end
        #Post.paginate(:page => params[:page], :per_page => 30)   
	end

	def rnd_
	n=rand(1..9)
	'/'+n.to_s+'.jpg'
	end
	helper_method :rnd_

end
