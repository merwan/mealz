class Meal < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :planning

  def to_s
    "#{happens_at}: #{recipe.title}"
  end
end
