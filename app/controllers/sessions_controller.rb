# -*- coding: utf-8 -*-
class SessionsController < ApplicationController
layout "some"

def index

  end

  def create

    user = User.find_by_email(params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:error]=false
    else
      flash[:error]=true
    end

    redirect_to :back

  end

  def destroy
    session[:user_id] = nil
    redirect_to categories_path, notice: 'впр'
    flash[:error]=false
	end


end
