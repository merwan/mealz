class Planning < ActiveRecord::Base
  has_many :meals
  has_many :recipes, through: :meals
  belongs_to :user
end
