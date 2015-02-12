require 'rails_helper'

RSpec.describe AllergiesController, type: :controller do

  let(:valid_attributes) {
    { name: "soy" }
  }

  describe 'Get index' do
    it 'has a 200 status' do
      get :index
      expect(response.status). to eq 200
    end

    it 'renders the index template' do
      allergies = Allergy.all
      get :index
      expect(response).to render_template('index')
    end
  end
end
