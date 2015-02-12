require 'rails_helper'

RSpec.feature 'Managing allergies' do
  before(:each) do
    @allergy = Allergy.create!(name: "soy")
  end

  scenario 'List all allergies for a user' do
    visit "/allergies"
    expect(page).to have_content 'Allergies'
    end

end


