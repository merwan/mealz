require 'spec_helper'

describe Ingredient do
  let(:ingredient) { Ingredient.new(recipe_id: 1, product_id: 1, unit_id: 1, quantity: 12.34) }

  it 'is valid with a product, unit and quantity' do
    expect(ingredient).to be_valid
  end

  it 'must have a reference to a recipe' do
    ingredient.recipe_id = nil
    expect(ingredient).not_to be_valid
  end

  it 'must have a reference to a product' do
    ingredient.product_id = nil
    expect(ingredient).not_to be_valid
  end

  it 'must have a reference to an unit' do
    ingredient.unit_id = nil
    expect(ingredient).not_to be_valid
  end

  it 'must have a quantity' do
    ingredient.quantity = nil
    expect(ingredient).not_to be_valid
  end

  it 'must have a numeric quantity' do
    ingredient.quantity = 'aze'
    expect(ingredient).not_to be_valid
  end
end
