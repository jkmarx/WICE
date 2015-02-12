require 'rails_helper'

RSpec.describe Recipe, type: :model do

  describe '.create' do
    it 'creates a new recipe' do
      expect(Recipe.create()).to be_a Recipe
      end
    it 'is invalid without a title, ingredients, directions' do
      expect(Recipe.create(user_id:1)).not_to be_valid
    end
    it 'is invalid without an user_id' do
      expect(Recipe.create( title: "Sugar Cookies", category: "Cookies", ingredients: "2 3/4 cups all-purpose flour, 1 teaspoon baking soda, 1/2 teaspoon baking powder,1 cup butter, softened, 1 1/2 cups white sugar, 1 egg, 1 teaspoon vanilla extract", directions: "Preheat oven to 375 degrees F (190 degrees C). In a small bowl, stir together flour, baking soda, and baking powder. Set aside. In a large bowl, cream together the butter and sugar until smooth. Beat in egg and vanilla. Gradually blend in the dry ingredients. Roll rounded teaspoonfuls of dough into balls, and place onto ungreased cookie sheets. Bake 8 to 10 minutes in the preheated oven, or until golden. Let stand on cookie sheet two minutes before removing to cool on wire racks.")).not_to be_valid
    end

    it 'is invalid without an user_id' do
      expect(Recipe.create( title: "Sugar Cookies", category: "Cookies", ingredients: "2 3/4 cups all-purpose flour, 1 teaspoon baking soda, 1/2 teaspoon baking powder,1 cup butter, softened, 1 1/2 cups white sugar, 1 egg, 1 teaspoon vanilla extract")).not_to be_valid
    end

    it 'is valid with a directions' do
      user6 = User.create!(email: 'user6@fake.com', password: "ABad1234",name:"Steve Jenkins")
      expect(Recipe.create(title: "Sugar Cookies", user_id: user6.id, category: "dessert", ingredients: "2 3/4 cups all-purpose flour, 1 teaspoon baking soda, 1/2 teaspoon baking powder,1 cup butter, softened, 1 1/2 cups white sugar, 1 egg, 1 teaspoon vanilla extract", directions: "Preheat oven to 375 degrees F (190 degrees C). In a small bowl, stir together flour, baking soda, and baking powder. Set aside. In a large bowl, cream together the butter and sugar until smooth. Beat in egg and vanilla. Gradually blend in the dry ingredients. Roll rounded teaspoonfuls of dough into balls, and place onto ungreased cookie sheets. Bake 8 to 10 minutes in the preheated oven, or until golden. Let stand on cookie sheet two minutes before removing to cool on wire racks.")).to be_valid
    end
  end
end
