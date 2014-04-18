# -*- coding: utf-8 -*-
class Subcategory < ActiveRecord::Base
	belongs_to :category
	has_many :products




end
