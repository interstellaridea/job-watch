class AddJobReferenceToCompany < ActiveRecord::Migration[5.1]
  def change
    add_reference :companies, :job, foreign_key: true
  end
end
