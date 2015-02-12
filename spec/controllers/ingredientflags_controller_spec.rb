require 'rails_helper'

RSpec.describe IngredientflagsController, type: :controller do

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
