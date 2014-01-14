json.array!(@units) do |unit|
  json.extract! unit, :id, :title
  json.url unit_url(unit, format: :json)
end
