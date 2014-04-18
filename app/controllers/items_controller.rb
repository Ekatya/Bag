# -*- coding: utf-8 -*-
class ItemsController < ApplicationController
	def create
	
	if current_cart.items.where(product_id: params[:product_id]).any?
      item = current_cart.items.where(product_id: params[:product_id]).first
      item.quantity += 1
    else
      item = Item.new
      item.cart = current_cart
      product = Product.find(params[:product_id])
      item.product = product
      item.quantity = 1
      item.price = product.price
    end

    if item.save
      redirect_to :back, notice: 'Product added'
    else
      redirect_to :back, alert: 'Error'
    end

	end

  def destroy
    Item.find(params[:id]).destroy
    redirect_to :back
  end


end
