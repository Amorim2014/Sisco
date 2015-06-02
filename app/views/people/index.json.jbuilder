json.array!(@people) do |person|
  json.extract! person, :id, :name, :sex, :birth_date, :baptism_date, :hope, :phone, :cell_phone, :address, :number, :neighborhood, :city, :state, :postal_code
  json.url person_url(person, format: :json)
end
