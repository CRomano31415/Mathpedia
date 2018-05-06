require 'faker'

10.times do
	User.create!(
		email: Faker::Internet.email,
		password: 'password',
		role: 'premium'
		)	
end

20.times do
	User.create!(
		email: Faker::Internet.email,
		password: 'password',
		role: 'member'
		)	
end

admin = User.create!(
	email: 'admin@example.com', 
	password: 'helloworld', 
	role: 'admin'
	)

premium = User.create!(
	email: 'premium@example.com', 
	password: 'helloworld', 
	role: 'premium'
	)

member = User.create!(
	email: 'member@example.com', 
	password: 'helloworld', 
	role: 'member'
	)

users = User.all

100.times do 
	Wiki.create!(
		user: users.sample,
		title: Faker::Lorem.characters(10),
		body: Faker::Lorem.paragraph(2),
		private: Faker::Boolean.boolean(0.5)
		)
end 



puts "Seed finished"
puts "#{User.count} users created"
puts "#{Wiki.count} wikis created"