class RegularPionner < ActiveRecord::Base
	validates_presence_of :name, :designation_date
	validates_uniqueness_of :name


	
end
