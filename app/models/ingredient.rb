class Ingredient < ApplicationRecord
    belongs_to :food
    belongs_to :recipe

   validates :quantity, presence: true, numericality: { only_inter: true, greater_than_or_equal_to: 0 }
end
