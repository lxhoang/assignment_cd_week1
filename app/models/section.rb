class Section < ApplicationRecord
	has_many :food_items

	def to_s
		name || "No name is defined"
	end
end
