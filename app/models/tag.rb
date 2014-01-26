class Tag < ActiveRecord::Base
  has_many :taggings
  has_many :recipes, through: :taggings
  default_scope { order(:name) }

  def to_s
    name
  end
end
