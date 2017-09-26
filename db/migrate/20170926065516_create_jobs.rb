class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|

			t.string :title
			t.integer :level, default: 0 # enum {non-specified: 0, jr : 1, midlevel: 2, sr: 3 }
			t.string :description
			t.string :job_reference_id
			t.string :city_locaiton
			t.string :board_name
			t.string :manager_name
			t.string :contact_with_company

      t.timestamps
    end
  end
end
