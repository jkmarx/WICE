require 'rails_helper'

RSpec.feature 'Managing food flags' do

  before(:each) do
    @allergy = Allergy.create!(name: "gluten")
    @ingredientflag = Ingredientflag.create!(name: "bread")
    @foodflag = Foodflag.create!(food: "flour", allergy_id: @allergy.id, ingredientflag_id: @ingredientflag.id )
  end

  scenario 'List all foodflags for a user' do
    visit "/foodflags"
    expect(page).to have_content 'Flagged Ingredients'
    expect(page).to have_content 'flour'
    end

end


