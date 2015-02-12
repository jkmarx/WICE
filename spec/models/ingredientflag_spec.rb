require 'rails_helper'

RSpec.describe Ingredientflag, type: :model do
  describe '.create' do
    it 'creates a new allergy' do
      expect(Ingredientflag.create()).to be_a Ingredientflag
      end
    it 'is invalid without a name' do
      expect(Ingredientflag.create( )).not_to be_valid
    end

    it 'is valid with a name' do
      expect(Ingredientflag.create(name:"bread")).to be_valid
    end
  end

end
