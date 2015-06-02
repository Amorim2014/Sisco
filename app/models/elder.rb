class Elder < ActiveRecord::Base
  belongs_to :person
  def nome_pessoa
		person.present? ? person.nome : ''		
	end
 
 end
