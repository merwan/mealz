class Unit < ActiveRecord::Base
  validates :title, presence: true
  default_scope { order(:title) }
end
