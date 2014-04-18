# -*- coding: utf-8 -*-
class Cart < ActiveRecord::Base
	has_many :items
end
