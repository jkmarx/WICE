class CreateIngredientflags < ActiveRecord::Migration
  def change
    create_table :ingredientflags do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
