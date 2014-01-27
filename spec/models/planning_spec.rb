require 'spec_helper'

describe Planning do
  let(:planning) { Planning.new }

  it 'has many meals' do
    expect(planning).to respond_to(:meals)
  end

  it 'has many recipes' do
    expect(planning).to respond_to(:recipes)
  end
end
