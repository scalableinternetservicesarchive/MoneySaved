# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Category.create!(name: "sneakers")
Category.create!(name: "clothes")
Category.create!(name: "electronics")
Category.create!(name: "makeup")
Category.create!(name: "food")


200.times do |n|
	name = Faker::Commerce.product_name
	effdate = 2015-10-15
	expdate = 2016-12-15
	label = Faker::Number.between(1, 5)
	store = Faker::Company.name
	link = Faker::Internet.url
	intro = Faker::Lorem.paragraph(2, false, 4)
	price = Faker::Commerce.price

	Deal.create!(name: name,
				 effdate: effdate,
				 expdate: expdate,
				 label: label,
				 store: store,
				 link: link,
				 intro: intro,
				 price: price
		)
end
