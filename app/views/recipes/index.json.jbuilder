json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :title, :description
  json.url recipe_url(recipe, format: :json)
end
