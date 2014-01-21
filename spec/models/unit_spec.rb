require 'spec_helper'

describe Unit do
  it 'is valid with a title' do
    unit = Unit.new(title: 'new unit')
    expect(unit).to be_valid
  end

  it 'is invalid without a title' do
    unit = Unit.new
    expect(unit).not_to be_valid
  end
end
