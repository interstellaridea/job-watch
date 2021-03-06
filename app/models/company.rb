class Company < ApplicationRecord
	has_many :jobs, inverse_of: :company
	
	validates_presence_of :name

	enum maturity: {
		non_specified: 0,
		start_up: 1,
		public_company: 2,
		private_company: 3
	}
end
