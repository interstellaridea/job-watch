class Job < ApplicationRecord
	belongs_to :user
	belongs_to :company, optional: true,inverse_of: :jobs
	validates_presence_of :title, :description

	accepts_nested_attributes_for :company
																# allow_destroy: true,
																# reject_if: lambda { |attrs| attrs['name'].blank?	}

	enum status: { applied: 0, has_followed_up: 1 }

	enum level: {
		non_specified: 0,
		junior_level: 1,
		mid_level: 2,
		senior_level: 3
	}
end
