class ProductsController < ApplicationController
	
	def index
	 
	end

	def show
       @product=params[:id]
    end
end
