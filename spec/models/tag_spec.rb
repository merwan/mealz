require 'spec_helper'

describe Tag do
  describe 'default_scope' do
    it 'is ordered by name' do
      tag_1 = Tag.create(name: 'qsd')
      tag_2 = Tag.create(name: 'aze')
      expect(Tag.all).to eq([tag_2, tag_1])
    end
  end
end
