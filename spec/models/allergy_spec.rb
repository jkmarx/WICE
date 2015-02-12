require 'rails_helper'

RSpec.describe Allergy, type: :model do

  describe '.create' do
    it 'creates a new allergy' do
      expect(Allergy.create()).to be_a Allergy
      end
    it 'is invalid without a name' do
      expect(Allergy.create( )).not_to be_valid
    end

    it 'is valid with a name' do
      expect(Allergy.create(name:"soy")).to be_valid
    end
  end
end
