class Cocktail < ApplicationRecord
	has_many :doses, dependent: :restrict_with_error
	has_many :ingredients, through: :doses
	validates :name, uniqueness: true, presence: true
end

# cocktail= Cocktail.first
# docktail.doses 
# cocktail.ingredients
