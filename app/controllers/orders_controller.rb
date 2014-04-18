# -*- coding: utf-8 -*-
class OrdersController < ApplicationController

	def new
	@order=Order.new
	end

	def create
	 @order = Order.new(params.require(:order).permit(:user_name, :email, :adress, :description))
	 @order.cart_id=current_cart.id

 	if @order.save
 	current_cart.destroy
 	cart = Cart.create
 	session[:cart_id] = cart.id

	redirect_to root_path
	else
	render 'new'
 	end

	end

end
