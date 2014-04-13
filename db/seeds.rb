# -*- coding: utf-8 -*-
#Category.create(id: 1, name: "женские", position: 1)
#Category.create(id: 2, name: "мужские", position: 2)
#Category.create(id: 3, name: "дорожные", position: 3)
#Category.create(id: 4, name: "спортивные", position: 4)
#Category.create(id: 5, name: "арт", position: 5)

#Subcategory.create(id: 1, name: "деловые", position: 1,  category_id: 1)
#Subcategory.create(id: 2, name: "саквояжи", position: 2, category_id: 1)
#Subcategory.create(id: 3, name: "клатчи", position: 3, category_id: 1)
#Subcategory.create(id: 4, name: "через плечо", position: 4, category_id: 1)
#Subcategory.create(id: 5, name: "пляжные", position: 5, category_id: 1)
#Subcategory.create(id: 6, name: "портфели", position: 1, category_id: 2)
#Subcategory.create(id: 7, name: "через плечо", position: 2, category_id: 2)
#Subcategory.create(id: 8, name: "барсетки", position: 3, category_id: 2)
#Subcategory.create(id: 10, name: "на колесах", position: 1, category_id: 3)
#Subcategory.create(id: 11, name: "дорожные чемоданы", position: 2, category_id: 3)

def rnd_subcategory_and_category
	dd2=[] 
	category_=rand(1..4)
	dd1=Category.find(category_) 
		dd1.subcategories.each do |dd| 
		dd2[dd2.length]=dd.id 
		end 
	m=[]
	m[0]=category_
	m[1]=dd2.sample
	m	
	end


#50.times {k=rnd_subcategory_and_category
 #Product.create( name: 'a'+rand(0..10).to_s , price: rand(1..100) , category_id: k[0] , subcategory_id: k[1] , description: 'Практичная женская сумка от David Jones. Аксессуар черного цвета выполнен из искусственной кожи. Детали: внутренний и внешний карманы, серебристая фурнитура, декоративная вставка спереди, подвеска с бахромой.' , articul: rand(0..1000).to_s+rand(0..1000).to_s , favourite: rand(0..100) ) }

Color.create(name: 'background:#000000')
Color.create(name: 'background:#f4be92')
Color.create(name: 'background:#ecd6be')
Color.create(name: 'background:#848484')
Color.create(name: 'background:#ffffff')
Color.create(name: 'background:#ff0000')
Color.create(name: 'background:#c43b12')
Color.create(name: 'background:#ff7f50')
Color.create(name: 'background:#fa5713')
Color.create(name: 'background:#f4be92')
Color.create(name: 'background:#6d3600')
Color.create(name: 'background:#ecd6be')
Color.create(name: 'background:#fcdd76')
Color.create(name: 'background:#808000')
Color.create(name: 'background:#ffff00')
Color.create(name: 'background:#bffa32')
Color.create(name: 'background:#146b00')
Color.create(name: 'background:#08e8de')
Color.create(name: 'background:#54caf8')
Color.create(name: 'background:#0a56d4')
Color.create(name: 'background:#b166ca')
Color.create(name: 'background:#fd8cc4')
Color.create(name: 'background:#711020')
