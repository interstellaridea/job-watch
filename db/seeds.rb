


# Create me
User.create!(
	name: 'sebastian valdez',
	email: 'seb@test.com',
	password: 'asdfasdf',
	password_confirmation: 'asdfasdf'
)
me = User.last
puts "user #{me.first_name} created"

# # add applicaiton & Link prospect to user
# 5.times do |prospect|
# 	Prospect.create!(
# 		user_id: me.id,
# 		date_applied: Date.today,
# 		resume_version: '0.1' ,
# 		cover_letter_version: '0.0.1',
# 		status: 0,
# 		response: false 
# 	)
# end

# 5.times do |job|
# 	Job.create!(
# 			binding.pry
# 		prospect: me.prospects["#{job}".to_i].id,
# 		job_title:  "Job offer: #{job}",
# 		evel: 0, # 0 jr
# 		job_description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi, similique.',
# 		job_reference_id: '12345678' ,
# 		job_city_locaiton: 'San Mateo, CA',
# 		job_board_name: 'Hacker for Hire',
# 		manager_name: 'Eddie Lee',
# 		contact_with_company: '6 month',
# 	)
# end


# # though process

# user = User.last # user has many jobs

# Job.new(
# 	user_id: user.id,
# 	job_title:  "Job offer: #{job}",
# 	level: 0, # enum {non-specified: 0, jr : 1, midlevel: 2, sr: 3 }
# 	job_description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi, similique.',
# 	job_reference_id: '12345678' ,
# 	job_city_locaiton: 'San Mateo, CA',
# 	job_board_name: 'Hacker for Hire',
# 	manager_name: 'Eddie Lee',
# 	contact_with_company: '6 month',
# 	)
# )
# # jobs has many Prospects
# # jobs accetps nested attribs for prospects, in job controller use .build on 
# # jobs.new.prospects.build <= example
# # no need for prospects controller

# # jobs has_one company
# # jobs accepts nested attribs for comany

# # company table
# # company has_many jobs
# # job.new.compnay.build, maybe add a method that makes a query for choosing a
# # previous comany

# # hq_locaiton # string
# # industry #string
# # num_of_employees # int
# # type # int 0 non-specified, 1 start-up , 2 public, 3 private
# # compnay_valuation #int default 0.0
# # company_logo_url # text, make a Pictures table as imagble
# # company_website # string
# # notes # text


# # Recruiter table
# # has_many companies
# # job accepts nestted attribs for recruiters
# # job.new.recruiters.build

# # name # string
# # email #string
# # phone # phone
# # website # string
# # linkedin_url #string
# # rating # 0 -100 int default 0
# # agency # string









