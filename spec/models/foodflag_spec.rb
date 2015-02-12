require 'rails_helper'

RSpec.describe Foodflag, type: :model do

  describe '.create' do
    it 'creates a new food flag' do
      expect(Foodflag.create()).to be_a Foodflag
      end
    it 'is invalid without a food' do
      expect(Foodflag.create( )).not_to be_valid
    end

    it 'is valid with a name' do
      expect(Foodflag.create(food:"milk")).to be_valid
    end
  end
end


