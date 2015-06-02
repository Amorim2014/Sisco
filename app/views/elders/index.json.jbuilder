json.array!(@elders) do |elder|
  json.extract! elder, :id, :person_id, :designation_date, :removal_date
  json.url elder_url(elder, format: :json)
end
