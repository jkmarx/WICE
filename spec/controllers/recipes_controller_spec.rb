require 'rails_helper'
require 'byebug'

RSpec.describe RecipesController do

  attr_reader :user
  before(:each) do
    allergies=["crustacean shellfish","eggs","fish","milk","peanuts","soybean","tree nuts","wheat", "none"]
allergies.each do |alle|
  Allergy.create!(name: alle)
  end
    @user = User.create!(email: 'user2@fake.com', password: "ABad1234",name:"Jenny",allergy_ids:Allergy.first.id)
    foodflags=[
  ["crustacean shellfish type","shellfish product"],
  ["egg","egg protein","egg product"],
  ["fish types","fish product"],
  ["milk","milk protein","milk product"],
  ["peanut","peanut extract","peanut product"],
  ["soy","soy protein","soy product"],
  ["tree nut types","nut extract","nut product"],
  ["wheat","wheat extract","wheat protein", "wheat product" ]
]

    crustacean_shellfishs = ["barnacle","crab","crawfish" ,"krill","lobster","prawns","shrimp"]#

    crustacean_shellfishs.each do |fish|
        ingredient=Ingredientflag.create!(name:fish)
        Foodflag.create!(food:foodflags[0][0],allergy_id:Allergy.first.id,ingredientflag_id: ingredient.id)

        sign_in :user, @user

      end
    end


  let(:valid_attributes) {
    { title: "Sugar Cookies", user_id: @user.id, category: "dessert", ingredients: "2 3/4 cups all-purpose flour, 1 teaspoon baking soda, 1/2 teaspoon baking powder,1 cup butter, softened, 1 1/2 cups white sugar, 1 egg, 1 teaspoon vanilla extract", directions: "Preheat oven to 375 degrees F (190 degrees C). In a small bowl, stir together flour, baking soda, and baking powder. Set aside. In a large bowl, cream together the butter and sugar until smooth. Beat in egg and vanilla. Gradually blend in the dry ingredients. Roll rounded teaspoonfuls of dough into balls, and place onto ungreased cookie sheets. Bake 8 to 10 minutes in the preheated oven, or until golden. Let stand on cookie sheet two minutes before removing to cool on wire racks."}
  }

  let(:invalid_attributes){
    { title: nil, user_id: nil, category: nil, ingredients: nil, directions: nil }
  }


  describe 'Get index' do
    it 'has a 200 status' do
      @user.recipes
      get :index, user_id: @user
      expect(response.status). to eq 200
    end

    it 'renders the index template' do
      recipes = Recipe.where(user_id: @user).take
      get :index, user_id: @user
      expect(response).to render_template('index')
    end

    it 'assigns @recipes for an User' do
      recipes = user.recipes
      get :index, user_id: @user
      expect(assigns(:recipes)).to eq recipes
    end
  end

  describe 'GET show' do
    it 'has a 200 status code' do
      recipe = Recipe.create!(valid_attributes)
      get :show, id: recipe
      expect(response.status).to eq 200
    end

    it 'renders the show template' do
      recipe = Recipe.create!(valid_attributes)
      get :show, id: recipe
      expect(response).to render_template('show')
    end

    it 'assigns @recipe' do
      recipe = Recipe.create!(valid_attributes)
      get :show, id: recipe
      expect(assigns(:recipe)).to eq recipe
    end
  end

  describe 'GET new' do
    it 'has a 200 status code' do
      get :new, user_id: @user
      expect(response.status).to eq 200
    end

    it 'renders the new template' do
      get :new, user_id: @user
      expect(response).to render_template('new')
    end

    it 'assigns @user' do
      get :new, user_id: @user
      expect(assigns(:recipe)).to be_a_new Recipe
    end
  end

  describe 'POST create' do
    context 'with valid attributes' do
      it 'saves a new comment' do
        expect {
          post :create, user_id: @user, recipe: valid_attributes
        }.to change(Recipe, :count).by 1
      end

      it 'assigns @recipe' do
      post :create, user_id: @user, recipe: valid_attributes
      expect(assigns(:recipe)).to be_an Recipe
      expect(assigns(:recipe)).to be_persisted
      end

      it 'redirects to the created recipe' do
        post :create, user_id: @user, recipe: valid_attributes
        expect(response).to redirect_to(user_recipes_path(@user.id))
      end
    end

    context 'with invalid attribues' do
      it 'assigns @recipe, but does not save it' do
        post :create, user_id: @user, recipe: invalid_attributes
        expect(assigns(:recipe)).to be_a_new Recipe
      end

      it 're-renders the new template' do
        post :create, user_id: @user, recipe: invalid_attributes
        expect(response).to render_template 'new'
      end
    end
  end

  describe 'GET edit' do
    it 'has a 200 status code' do
      recipe = Recipe.create!(valid_attributes)
      get :edit, id:recipe
      expect(response.status).to eq 200
      end

    it 'renders the edit template' do
      recipe = Recipe.create!(valid_attributes)
      get :edit, id:recipe
      expect(response).to render_template('edit')
    end

    it 'assigns @recipe' do
      recipe = Recipe.create!(valid_attributes)
      get :edit, id:recipe
      expect(assigns(:recipe)).to eq recipe
    end
  end

    describe 'PATCH update' do
    context 'with valid attributes' do
      let(:new_attributes) {
        { title: "Grandma Sissy\'s Sugar Cookies", user_id: @user }
      }

      it 'assigns @recipe' do
        recipe = Recipe.create!(valid_attributes)
        patch :update,  id:recipe.id,recipe: new_attributes
        expect(assigns(:recipe)).to eq recipe
      end

      it 'redirects to the user_recipes' do
        recipe = Recipe.create!(valid_attributes)
        patch :update,  id:recipe.id, recipe: new_attributes
        expect(response).to redirect_to user_recipes_path(@user)
      end
    end

    context 'with invalid attributes' do
      it 'assigns @recipe' do
        recipe = Recipe.create!(valid_attributes)
        patch :update, id:recipe.id, recipe: invalid_attributes
        expect(assigns(:recipe)).to eq recipe
      end

      it 're-renders the edit template' do
        recipe = Recipe.create!(valid_attributes)
        patch :update, id:recipe.id,recipe: invalid_attributes
        expect(response).to render_template('edit')
      end
    end
  end

  describe 'DELETE destroy' do
    it 'destroys the requested recipe' do
      recipe = Recipe.create!(valid_attributes)
      expect {
        delete :destroy, id:recipe.id
      }.to change(Recipe, :count).by(-1)
    end

    it 'redirects to the users list' do
      recipe = Recipe.create!(valid_attributes)
      delete :destroy, id:recipe.id
      expect(response).to redirect_to user_recipes_path(@user.id)
    end
  end
end
