class Category < ActiveRecord::Base
  has_many :products
  validates :name, presence: true
  default_scope { order(:name) }

  def to_s
    name
  end
end
