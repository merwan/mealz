class Tag < ActiveRecord::Base
  has_many :taggings
  has_many :recipes, through: :taggings
end
