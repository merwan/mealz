class Recipe < ActiveRecord::Base
  has_many :ingredients
  has_many :taggings
  has_many :tags, through: :taggings
  validates :title, :description, presence: true
end
