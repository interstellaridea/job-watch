class Company < ApplicationRecord
	has_many :jobs, inverse_of: :company
	
	enum maturity: {
		non_specified: 0,
		start_up: 1,
		open: 2,
		closed: 3
	}
end
