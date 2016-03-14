json.array!(@regular_pionners) do |regular_pionner|
  json.extract! regular_pionner, :id, :person_id, :designation_date, :removal_date
  json.url regular_pionner_url(regular_pionner, format: :json)
end
