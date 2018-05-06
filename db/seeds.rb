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