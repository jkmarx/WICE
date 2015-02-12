require 'rails_helper'

RSpec.feature 'Managing ingredientflags' do
  before(:each) do
    @ingredientflag = Ingredientflag.create!(name: "bread")
  end

  scenario 'List all allergies for a user' do
    visit "/ingredientflags"
    expect(page).to have_content 'Ingredient Flags'
    end

end
