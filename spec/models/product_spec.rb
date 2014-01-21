require 'spec_helper'

describe Product do
  it 'is valid with a title' do
    product = Product.new(title: 'new product')
    expect(product).to be_valid
  end

  it 'is invalid without a title' do
    product = Product.new
    expect(product).not_to be_valid
  end
end
