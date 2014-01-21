require 'spec_helper'

describe Recipe do
  it 'is valid with a title' do
    recipe = Recipe.new(title: 'nope', description: 'ok')
    expect(recipe).to be_valid
  end

  it 'is invalid without a title' do
    expect(Recipe.new).not_to be_valid
  end

  it 'is invalid without a description' do
    recipe = Recipe.new(title: 'Recipe title')
    expect(recipe).not_to be_valid
  end
end
