# encoding: utf-8
class User < ActiveRecord::Base
has_secure_password 


	validates_presence_of :name, :email, message: "не должен быть пустой"
	validates :email, :format => {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: "не верный формат" }, :uniqueness => true
	
validates :name, :uniqueness => true, :format => {with: /[a-zA-ZА-Яa-я_1-90]/ , message: "недоступное" }

  validates_length_of :password, :within => 5..30,
    too_long: "слишком длинный",
    too_short: "должен состоять из 5 символов и более"

end
