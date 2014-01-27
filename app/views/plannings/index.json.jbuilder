json.array!(@plannings) do |planning|
  json.extract! planning, :id, :start_date, :end_date
  json.url planning_url(planning, format: :json)
end
