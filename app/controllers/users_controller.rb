# -*- coding: utf-8 -*-
class UsersController < ApplicationController
	layout "some"

	def new
		@sign_in_view=false
		@user = User.new
	end

  	def create
		@user = User.new(params.require(:user).permit(:name, :password, :email, :password_confirmation))
		@user.email = params[:user][:email].downcase

		if @user.save
    		session[:user_id] = @user.id
        	redirect_to categories_path
		else
        	render action: "new" 
		end
    end

end
