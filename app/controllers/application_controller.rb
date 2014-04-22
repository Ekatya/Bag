# -*- coding: utf-8 -*-
class ApplicationController < ActionController::Base
  
    protect_from_forgery with: :exception

	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end
	
	helper_method :current_user

	def max_zena(obj)
	obj.all.map {|a| a.price }.max
	end
	helper_method :max_zena

	def min_zena(obj)
	obj.all.map {|a| a.price }.min
	end
	helper_method :min_zena

	def current_cart

	if session[:cart_id]==Cart.find_by(id: session[:cart_id]).id
		cart = Cart.find_by(session[:cart_id])
		else
		cart = Cart.create
    	session[:cart_id] = cart.id
		end
		cart
	end
	helper_method :current_cart

	Number_product_1=6; #кол-во выводимых продуктов в категориях
    Number_product_2=6; #кол-во выводимых продуктов в подкатегориях
end
