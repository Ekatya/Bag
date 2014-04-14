# -*- coding: utf-8 -*-
class Com < ActiveRecord::Base
validates_presence_of :body, message: "не должен быть пустой"

	validates :body, :length => {:maximum => 500}, :format => {with: /[a-zA-Z0-9а-я.,А-Я-?()!_]/ , message: "пишите текст и цифры"}

	belongs_to :product
	belongs_to :user
end
