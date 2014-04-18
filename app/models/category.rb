# -*- coding: utf-8 -*-
class Category < ActiveRecord::Base
	
	has_many :products
	has_many :subcategories

mount_uploader :picture, PictureUploader

end
