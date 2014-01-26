require 'spec_helper'

describe Category do
  it 'has many products' do
    category = Category.new
    expect(category).to respond_to(:products)
  end

  it 'displays name for #to_s' do
    category = Category.new(name: 'fruits')
    expect(category.to_s).to eq('fruits')
  end
end
