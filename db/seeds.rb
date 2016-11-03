# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |n|
	name = Faker::Name.name
	email = "admin#{n+1}@test.com"
	password = "123456"
		User.create!(name: name,
			email: email,
			password:password,
			password_confirmation: password,
			admin: true)
end


1000.times do |n|
	name = Faker::Name.name
	email = "test#{n+1}@test.com"
	password = "123456"
		User.create!(name: name,
			email: email,
			password:password,
			password_confirmation: password)
end

Category.create!(name: "sneakers")
Category.create!(name: "clothes")
Category.create!(name: "electronics")
Category.create!(name: "makeup")
Category.create!(name: "food")


2000.times do |n|
	name = Faker::Commerce.product_name
	effdate = Faker::Date.between(40.days.ago, Date.today)
	expdate = Faker::Date.forward(40)
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

4000.times do
	user = Faker::Number.between(1, 1000)
	deal = Faker::Number.between(1, 2000)
	Like.create!(user_id: user,
				 deal_id: deal
		)
end


