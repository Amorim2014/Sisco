class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :sex
      t.date :birth_date
      t.date :baptism_date
      t.string :hope
      t.integer :phone, :limit => 8
      t.integer :cell_phone, :limit => 8
      t.string :address
      t.string :number
      t.string :neighborhood
      t.string :city
      t.string :state
      t.integer :postal_code

      t.timestamps null: false
    end
  end
end
