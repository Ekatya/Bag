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

	Number_product_1=12; #кол-во выводимых продуктов в категориях
    Number_product_2=12; #кол-во выводимых продуктов в подкатегориях
end
