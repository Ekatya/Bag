  # -*- coding: utf-8 -*-
  Category.delete_all
Category.create(id: 1, name: "женские", position: 1)
Category.create(id: 2, name: "мужские", position: 2)
Category.create(id: 3, name: "дорожные", position: 3)
Category.create(id: 4, name: "спортивные", position: 4)
Category.create(id: 5, name: "арт", position: 5)

  Subcategory.delete_all
Subcategory.create(id: 1, name: "деловые", position: 1,  category_id: 1)
Subcategory.create(id: 2, name: "саквояжи", position: 2, category_id: 1)
Subcategory.create(id: 3, name: "клатчи", position: 3, category_id: 1)
Subcategory.create(id: 4, name: "через плечо", position: 4, category_id: 1)
Subcategory.create(id: 5, name: "пляжные", position: 5, category_id: 1)
Subcategory.create(id: 6, name: "портфели", position: 1, category_id: 2)
Subcategory.create(id: 7, name: "через плечо", position: 2, category_id: 2)
Subcategory.create(id: 8, name: "барсетки", position: 3, category_id: 2)
Subcategory.create(id: 9, name: "на колесах", position: 1, category_id: 3)
Subcategory.create(id: 10, name: "дорожные чемоданы", position: 2, category_id: 3)
Subcategory.create(id: 11, name: "дорожные сумки", position: 3, category_id: 3)
Subcategory.create(id: 12, name: "рюкзаки", position: 1, category_id: 4)
Subcategory.create(id: 13, name: "Adidas", position: 2, category_id: 4)
Subcategory.create(id: 14, name: "pазмер XXL", position: 3, category_id: 4)
Subcategory.create(id: 15, name: "c принтом", position: 1, category_id: 5)
Subcategory.create(id: 16, name: "хенд-мейд", position: 2, category_id: 5)
Subcategory.create(id: 17, name: "с аппликацией", position: 3, category_id: 5)
Subcategory.create(id: 18, name: "молодежные", position: 4, category_id: 5)

Product.delete_all
Product.create(id: 1, name: "Кожаная женская зеленая", price: 350.0, category_id: 1, subcategory_id: 1, picture: "1b25485fc108a20e170113652ceae0bd.jpg", description: "", articul: "20", favourite: nil, picture1: "5eeb4e17a76523a97b4a65d4ed589789.jpg", picture2: "b0d3524b050080f63237f8413e09dcdc.jpg", color_id: 17)

Product.create(id: 2, name: "Кожаная кирпичного цвета", price: 400.0, category_id: 1, subcategory_id: 1, picture: "0d80df278fd8af35d66ab0d9c43e71cb.jpg", description: "", articul: "21", favourite: nil, picture1: "bd93a53edbdf4ddc575e9a505b8112d2.jpg", picture2: "d09c8e6a315a38e1fa805f4280593aa5.jpg", color_id: 9)

Product.create(id: 3, name: "Темно коричневая Италия", price: 500.0, category_id: 1, subcategory_id: 1,  picture: "8e7f4aaedf9308532a7c54dea67d4523.jpg", description: "", articul: "22", favourite: nil, picture1: "9a9b6a0eeb270efcaf5976578828c532.jpg", picture2: "9a1343f8355f971d169ed83923972cb0.jpg", color_id: 23)

Product.create(id: 4, name: "Кожаная сумка коричневая", price: 390.0, category_id: 1, subcategory_id: 1, picture: "b6277e71a2b63febff21c79f5e0dd608.jpg", description: "", articul: "23", favourite: nil, picture1: "c304535b9e6f7155fcd4af1877cbd9f1.jpg", picture2: "d3bbffff9ac943b0c1d440ccdc71b300.jpg", color_id: 23)

Product.create(id: 5, name: "Сумка кожаная бирюзовая \"под крокодил\"", price: 420.0, category_id: 1, subcategory_id: 1, picture: "2a5f3f035b0428480c5b64b3c92610f3.jpg", description: "", articul: "24", favourite: nil, picture1: "50f1bdc4b0f1c29f9f4dbbb56f4ce1b3.jpg", picture2: "eb598b4131c19b08931f083380bf826b.jpg", color_id: 18)

Product.create(id: 6, name: "Бежевая с черным", price: 520.0, category_id: 1, subcategory_id: 1, picture: "88f33e69e3889d04fb063e8a0649b542.jpg", description: "", articul: "25", favourite: nil, picture1: "28e015c3ad89c43d04b70f99bbca0fd1.jpg", picture2: "88f33e69e3889d04fb063e8a0649b542.jpg", color_id: 1)

Product.create(id: 7, name: "Кожаная бордовая Italian Bags", price: 340.0, category_id: 1, subcategory_id: 1, picture: "2a9f239bab17c702d89ca1e2dd241496.jpg", description: "Стильная деловая женская сумка из высококачественно...", articul: "26", favourite: nil, picture1: "9c1e7ef8775e765ef1a4a0e6497a823e.jpg", picture2: "703b58999babbbd510f3f67ccf026246.jpg", color_id: 23)

Product.create(id: 8, name: "Черная геометрической формы", price: 1500.0, category_id: 1, subcategory_id: 1, picture: "62ec5c5133348d9bdf9af1ba9c4dcc28.JPG", description: "Стильная очень вместительная сумка Венисон геометри...", articul: "26", favourite: nil, picture1: "d31cf95e0a47d7ee0bd5231da7ed093c.JPG", picture2: "5a83ed599dfff988acce4a9198f1703d.JPG", color_id: 1)

Product.create(id: 9, name: "Кожаная красная \"под крокодил\"", price: 950.0, category_id: 1, subcategory_id: 1, picture: "76a8a43b4c385d142fc2aa7c6c8560c8.jpg", description: "Элегантная сумка из натуральной кожи \"под крокодил\"...", articul: "25", favourite: nil, picture1: "c8842a4cb32fd761d9fa34b445fcb47f.jpg", picture2: "6af3b9b31622359ca0d8a147095b34ca.jpg", color_id: 6)

Product.create(id: 10, name: "Кожаная белая Assa", price: 1650.0, category_id: 1, subcategory_id: 1, picture: "1b5b7c82fdc946739133e0baf45a1525.JPG", description: "Аккуратная кожаная сумка белого цвета. В сумке: 2 о...", articul: "27", favourite: nil, picture1: "6b40c56b51c4485256d9d8c15784c52d.JPG", picture2: "f5b63f7d3a1d10a988dceebf42fdca43.JPG", color_id: 5)






#def rnd_subcategory_and_category
	#dd2=[] 
	#category_=rand(1..4)
	#dd1=Category.find(category_) 
		#dd1.subcategories.each do |dd| 
		#dd2[dd2.length]=dd.id 
		#end 
	#m=[]
	#m[0]=category_
	#m[1]=dd2.sample
	#m	
	#end


#50.times {k=rnd_subcategory_and_category
 #Product.create( name: 'a'+rand(0..10).to_s , price: rand(1..100) , category_id: k[0] , subcategory_id: k[1] , description: 'Практичная женская сумка от David Jones. Аксессуар черного цвета выполнен из искусственной кожи. Детали: внутренний и внешний карманы, серебристая фурнитура, декоративная вставка спереди, подвеска с бахромой.' , articul: rand(0..1000).to_s+rand(0..1000).to_s , favourite: rand(0..100) ) }
Color.delete_all
Color.create(id: 1, name: 'background:#000000')
Color.create(id: 2, name: 'background:#f4be92')
Color.create(id: 3, name: 'background:#ecd6be')
Color.create(id: 4, name: 'background:#848484')
Color.create(id: 5, name: 'background:#ffffff')
Color.create(id: 6, name: 'background:#ff0000')
Color.create(id: 7, name: 'background:#c43b12')
Color.create(id: 8, name: 'background:#ff7f50')
Color.create(id: 9, name: 'background:#fa5713')
Color.create(id: 10, name: 'background:#f4be92')
Color.create(id: 11, name: 'background:#6d3600')
Color.create(id: 12, name: 'background:#ecd6be')
Color.create(id: 13, name: 'background:#fcdd76')
Color.create(id: 14, name: 'background:#808000')
Color.create(id: 15, name: 'background:#ffff00')
Color.create(id: 16, name: 'background:#bffa32')
Color.create(id: 17, name: 'background:#146b00')
Color.create(id: 18, name: 'background:#08e8de')
Color.create(id: 19, name: 'background:#54caf8')
Color.create(id: 20, name: 'background:#0a56d4')
Color.create(id: 21, name: 'background:#b166ca')
Color.create(id: 22, name: 'background:#fd8cc4')
Color.create(id: 23, name: 'background:#711020')

User.delete_all
User.create(id: 1, name: "den", password_digest: "111111", email: "den@mail.ru")