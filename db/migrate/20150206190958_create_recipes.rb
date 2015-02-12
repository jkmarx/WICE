class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :ingredients
      t.string :category, default: "other"
      t.text :directions
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :recipes, :users
  end
end
