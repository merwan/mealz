class Ingredient < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :product
  belongs_to :unit

  def to_s
    "#{product.title} : #{quantity} #{unit.title}"
  end
end
