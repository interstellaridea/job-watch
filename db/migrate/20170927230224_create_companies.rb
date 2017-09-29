class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
			t.string	:hq_location # string
			t.string	:industry #string
			t.integer :num_of_employees # int
			t.integer :maturity, default: 0 # enum 0 non-specified, 1 start-up , 2 public, 3 private
			t.integer :valuation #int default 0.0
			t.text		:logo_url # text, make a Pictures table as imagble
			t.string	:website # string
			t.text		:notes # text

      t.timestamps
    end
  end
end
