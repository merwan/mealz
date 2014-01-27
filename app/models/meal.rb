class Meal < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :planning
end
