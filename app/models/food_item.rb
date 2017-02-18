class FoodItem < ApplicationRecord
  belongs_to :section
  validates :name, :price, presence: true
  has_many :orders
end
