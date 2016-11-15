# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
	1000.times do |n|
		name = Faker::Name.name
		email = "test#{n+1}@test.com"
		password = "123456"
		User.create!(name: name,
			email: email,
			password:password,
			password_confirmation: password)
	end
end

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



Category.create!(name: "sneakers")
Category.create!(name: "clothes")
Category.create!(name: "electronics")
Category.create!(name: "makeup")
Category.create!(name: "food")

ActiveRecord::Base.transaction do
	20000.times do |n|
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
end

for i in 1..1000 do
	start = i
	tail = i + 50
	ActiveRecord::Base.transaction do
		for j in start..tail do
			Like.create!(user_id: i,
				 deal_id: j
			)
		end
	end
end


