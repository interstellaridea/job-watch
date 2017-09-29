class Job < ApplicationRecord
	belongs_to :user
	belongs_to :company, optional: true,inverse_of: :jobs
	accepts_nested_attributes_for :company

	enum level: {
		non_specified: 0,
		junior_level: 1,
		mid_level: 2,
		senior_level: 3
	}
end
