require 'rails_helper'

RSpec.feature 'Managing recipes' do
  before(:each) do
    @user = User.create!(email: 'user5@fake.com', password: "ABad1234", name:"Pete")
    @recipe = Recipe.create!(title: "Sugar Cookies", user_id: @user.id, category: "dessert", ingredients: "2 3/4 cups all-purpose flour, 1 teaspoon baking soda, 1/2 teaspoon baking powder,1 cup butter, softened, 1 1/2 cups white sugar, 1 egg, 1 teaspoon vanilla extract", directions: "Preheat oven to 375 degrees F (190 degrees C). In a small bowl, stir together flour, baking soda, and baking powder. Set aside. In a large bowl, cream together the butter and sugar until smooth. Beat in egg and vanilla. Gradually blend in the dry ingredients. Roll rounded teaspoonfuls of dough into balls, and place onto ungreased cookie sheets. Bake 8 to 10 minutes in the preheated oven, or until golden. Let stand on cookie sheet two minutes before removing to cool on wire racks.")
  end
  scenario 'List all recipes for a user' do
    visit "/users/#{@user.id}/recipes"
    expect(page).to have_content 'Recipes'
    end

  scenario 'Read a recipe' do
    visit "/recipes/#{@recipe.id}"

    expect(page.find('h1')).to have_content 'Recipe'
    expect(page).to have_content "Ingredients"
  end

  scenario 'Create an recipe' do

    visit "users/#{@user.id}/recipes/new"

    fill_in 'Title', with: "Sugar Cookies"
     select "dessert", from:'Category'
    fill_in 'Ingredients', with: "2 3/4 cups all-purpose flour, 1 teaspoon baking soda, 1/2 teaspoon baking powder,1 cup butter, softened, 1 1/2 cups white sugar, 1 egg, 1 teaspoon vanilla extract"
    fill_in 'Directions', with: "Preheat oven to 375 degrees F (190 degrees C). In a small bowl, stir together flour, baking soda, and baking powder. Set aside. In a large bowl, cream together the butter and sugar until smooth. Beat in egg and vanilla. Gradually blend in the dry ingredients. Roll rounded teaspoonfuls of dough into balls, and place onto ungreased cookie sheets. Bake 8 to 10 minutes in the preheated oven, or until golden. Let stand on cookie sheet two minutes before removing to cool on wire racks."
    click_on "Save Recipe"

    expect(page).to have_content "success"
  end

  scenario 'Update an recipe' do

    visit "recipes/#{@recipe.id}/edit"

    fill_in 'Title', with: "Grandma's Sugar Cookies"
    click_on 'Save Recipe'

    expect(page).to have_content "success"
    expect(page).to have_content 'Grandma\'s Sugar Cookies'
  end

  scenario 'Delete a recipe' do
    visit "recipes/#{@recipe.id}/edit"
    click_on 'Delete Recipe'
    expect(page).to have_content "success"
  end
end





