


# create me

User.create!(
	name: 'sebastian valdez',
	email: 'seb@test.com',
	password: 'asdfasdf',
	password_confirmation: 'asdfasdf'
)
me = User.last
puts "user #{me.first_name} created"

# add applicaiton

Prospect.create!(
	user_id: me.id,
	date_applied: Date.today,
	resume_version: '0.1' ,
	cover_letter_version: '0.0.1',
	status: 0,
	response: false 
)

# Link prospect to user


