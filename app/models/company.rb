class Company < ApplicationRecord
	belongs_to :jobs, optional: true
	# enum maturity: {
	# 	non_specified: 0,
	# 	start_up: 1,
	# 	open: 2,
	# 	closed: 3
	# }
end
