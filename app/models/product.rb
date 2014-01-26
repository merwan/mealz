class Product < ActiveRecord::Base
  belongs_to :category
  validates :title, :category_id, presence: true
end
