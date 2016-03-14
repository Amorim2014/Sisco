class Person < ActiveRecord::Base
	validates_presence_of :name, :sex, :birth_date, :hope, :phone, :cell_phone, :address, :number, :neighborhood, :city, :state, :postal_code
	has_many :ministerial_servant
end
