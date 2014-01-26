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

  describe 'default_scope' do
    it 'is ordered by name' do
      category_1 = Category.create(name: 'qsd')
      category_2 = Category.create(name: 'aze')
      expect(Category.all).to eq([category_2, category_1])
    end
  end
end
