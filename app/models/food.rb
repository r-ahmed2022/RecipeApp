class Food < ApplicationRecord
    belongs_to :user
    has_many :ingredients

    validates :name, presence: true
    validates :measurement_unit, presence: true
    validates :price, presence: true, numericality: { only_inter: true, greater_than_or_equal_to: 0 }
    validates :quantity, presence: true, numericality: { only_inter: true, greater_than_or_equal_to: 0 }
end
