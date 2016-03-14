class MinisterialServant < ActiveRecord::Base
  validates_presence_of :designation_date

  belongs_to :person
  def nome_pessoa
		   person.present? ? person.nome : ''		
	end
end
