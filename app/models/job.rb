class Job < ApplicationRecord
	belongs_to :user
	has_one :company
	enum level: {
		non_specified: 0,
		junior_level: 1,
		mid_level: 2,
		senior_level: 3
	}
end
