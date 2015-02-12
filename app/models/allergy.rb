class Allergy < ActiveRecord::Base
  has_many :foodflags
  has_many :ingredientflags, through: :foodflags

  has_and_belongs_to_many :users

  validates :name, presence: true
end
