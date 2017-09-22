JobWatch
====

#### Track jobs applied to 


#### ToDos
- X Implement User signin, signout, register
- Create Models with proper attributes
- Create Forms for signend in user
- Add Chartkick for charting response rates
- Add rake task to email users to follow up on applications


# Model and associations: 

Users
	has_many :applicaitons

Application 
	has_many :jobs, references jobs_id

Jobs
	has_many :applications
	has_many :companies

company
	has_many jobs, refernces jobs_id

recruiter
	has_many jobs, refernces job_id