require 'spec_helper'

describe Recipe do
  let(:recipe) { Recipe.new(title: 'nope', description: 'ok') }
  it 'is valid with a title' do
    expect(recipe).to be_valid
  end

  it 'is invalid without a title' do
    recipe.title = nil
    expect(recipe).not_to be_valid
  end

  it 'is invalid without a description' do
    recipe.description = nil
    expect(recipe).not_to be_valid
  end

  describe 'default_scope' do
    it 'is ordered by title' do
      recipe_1 = Recipe.create(title: 'qsd', description: 1)
      recipe_2 = Recipe.create(title: 'aze', description: 1)
      expect(Recipe.all).to eq([recipe_2, recipe_1])
    end
  end
end
