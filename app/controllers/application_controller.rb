class ApplicationController < ActionController::Base
  
    protect_from_forgery with: :exception

	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end
	
	helper_method :current_user

	Number_product_1=10; #кол-во выводимых продуктов в категориях
    Number_product_2=10; #кол-во выводимых продуктов в подкатегориях
end
