json.array!(@ministerial_servants) do |ministerial_servant|
  json.extract! ministerial_servant, :id, :person_id, :designation_date, :removal_date
  json.url ministerial_servant_url(ministerial_servant, format: :json)
end
