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

  describe 'default_scope' do
    it 'is ordered by title' do
      unit_1 = Unit.create(title: 'qsd')
      unit_2 = Unit.create(title: 'aze')
      expect(Unit.all).to eq([unit_2, unit_1])
    end
  end
end
