require 'spec_helper'

describe Product do
  let (:product) { Product.new(title: 'new product', category_id: 1) }
  it 'is valid with a title' do
    expect(product).to be_valid
  end

  it 'is invalid without a title' do
    product.title = nil
    expect(product).not_to be_valid
  end

  it 'must have a reference to a category' do
    product.category_id = nil
    expect(product).not_to be_valid
  end

  it 'belongs to a category' do
    expect(product).to respond_to(:category)
  end
end
