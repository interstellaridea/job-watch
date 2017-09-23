class CreateProspects < ActiveRecord::Migration[5.1]
  def change
    create_table :prospects do |t|
      t.references :user, foreign_key: true
      t.datetime :date_applied
      t.string :resume_version
      t.string :cover_letter_version
      t.integer :status
      t.boolean :response
      t.datetime :response_date

      t.timestamps
    end
  end
end
