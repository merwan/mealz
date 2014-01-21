class Unit < ActiveRecord::Base
  validates :title, presence: true
end
