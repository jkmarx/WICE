class CreateIngredientflagsRecipe < ActiveRecord::Migration
  def change
    create_table :ingredientflags_recipes do |t|
      t.belongs_to :recipe, index: true
      t.belongs_to :ingredientflag, index: true
    end
  end
end
