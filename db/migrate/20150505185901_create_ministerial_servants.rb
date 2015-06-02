class CreateMinisterialServants < ActiveRecord::Migration
  def change
    create_table :ministerial_servants do |t|
      t.references :person, index: true, foreign_key: true
      t.date :designation_date
      t.date :removal_date

      t.timestamps null: false
    end
  end
end
