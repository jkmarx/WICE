class Foodflag < ActiveRecord::Base
  belongs_to :allergy
  belongs_to :ingredientflag

  validates :food, presence: true
end
