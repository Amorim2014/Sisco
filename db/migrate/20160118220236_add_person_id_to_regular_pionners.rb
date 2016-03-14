class AddPersonIdToRegularPionners < ActiveRecord::Migration
  def change
  	change_table(:regular_pionners) do |t|
  	  t.remove :name
  	  t.references :person, index: true, foreign_key: true
  	end
  end
end
