class CompaniesController < ApplicationController

	def new
		@company = Company.new
	end

	def create
		@company = Company.new(company_params)
		binding.pry
	end

	private

		def company_params
			params.require(:company).permit(
																:hq_location,
																:industry,
																:num_of_employees,
																:maturity,
																:valuation,
																:logo_url,
																:website,
																:notes)
		end

end
