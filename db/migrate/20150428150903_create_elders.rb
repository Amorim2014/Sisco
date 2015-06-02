class CreateElders < ActiveRecord::Migration
  def change
    create_table :elders do |t|
      t.references :person, index: true, foreign_key: true
      t.date :designation_date
      t.string :removal_date

      t.timestamps null: false
    end
  end
end
