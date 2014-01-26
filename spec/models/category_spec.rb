require 'spec_helper'

describe Category do
  it 'has many products' do
    category = Category.new
    expect(category).to respond_to(:products)
  end
end
