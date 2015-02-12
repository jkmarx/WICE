class CreateFoodflags < ActiveRecord::Migration
  def change
    create_table :foodflags do |t|
      t.string :food
      t.belongs_to :ingredientflag, index: true
      t.belongs_to :allergy, index: true
    end
    add_foreign_key :foodflags, :ingredientflags
    add_foreign_key :foodflags, :allergies
  end
end
