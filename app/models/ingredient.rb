class Ingredient < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :product
  belongs_to :unit
  validates :recipe_id, :product_id, :unit_id, :quantity, presence: true
  validates :quantity, numericality: true

  def to_s
    "#{product.title} : #{quantity} #{unit.title}"
  end
end
