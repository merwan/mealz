json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :quantity, :unit_id, :product_id
  json.url ingredient_url(ingredient, format: :json)
end
