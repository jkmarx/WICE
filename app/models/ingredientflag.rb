class Ingredientflag < ActiveRecord::Base
  has_many :foodflags
  has_many :allergies, through: :foodflags
  has_and_belongs_to_many :recipes

  validates :name, presence: true
end
