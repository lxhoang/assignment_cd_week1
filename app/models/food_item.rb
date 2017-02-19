class FoodItem < ApplicationRecord
  belongs_to :section
  validates :name, :price, presence: true
  has_many :orders

  def self.search(search)
  	search = search.downcase
  	where("LOWER(name) ILIKE ? or LOWER(description) LIKE ?", "#{search}%", "%#{search}%")
  end

end
