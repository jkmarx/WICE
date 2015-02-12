require 'rails_helper'

RSpec.describe FoodflagsController, type: :controller do

  before(:each) do
    @allergy = Allergy.create!(name: "gluten")
    @ingredientflag = Ingredientflag.create!(name: "bread")
    @foodflag = Foodflag.create!(food: "flour", allergy_id: @allergy.id, ingredientflag_id: @ingredientflag.id )
  end

  describe 'Get index' do
    it 'has a 200 status' do
      get :index
      expect(response.status). to eq 200
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end
  end
end
