# -*- coding: utf-8 -*-
class ComsController < ApplicationController

def create 

	@comments = Com.new(params.require(:com).permit(:user_id, :body, :name_user, :product_id))

		if @comments.save
        redirect_to :back
    	else
        redirect_to :back , notice: 'ошибка, пустые поля, превышен максимум, или запрещен. символы'
		end

end

def destroy

if current_user and params[:name]==current_user.name
       Com.find(params[:id]).destroy
       #http://localhost:3000/products/114
else

end
redirect_to product_path(params[:id_product])

end

end
