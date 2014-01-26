require 'spec_helper'

describe Category do
  let (:category) { Category.new(name: 'fruits') }

  it 'has many products' do
    expect(category).to respond_to(:products)
  end

  it 'displays name for #to_s' do
    expect(category.to_s).to eq('fruits')
  end

  it 'is valid with a name' do
    expect(category).to be_valid
  end

  it 'is not valid without a name' do
    category.name = nil
    expect(category).not_to be_valid
  end
end
