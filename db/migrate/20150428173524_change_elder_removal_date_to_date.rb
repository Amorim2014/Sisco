class ChangeElderRemovalDateToDate < ActiveRecord::Migration
  def change
  	change_table :elders do |t|
      t.remove :removal_date
      t.date :removal_date
      t.rename :person_id, :people_id
  	end
  end
end
