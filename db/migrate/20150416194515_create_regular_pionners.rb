class CreateRegularPionners < ActiveRecord::Migration
  def change
    create_table :regular_pionners do |t|
      t.string :name
      t.date :designation_date
      t.date :removal_date

      t.timestamps null: false
    end
  end
end
