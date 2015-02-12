class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body
      t.boolean :important
      t.string :writer
      t.belongs_to :user, index:true
      t.belongs_to :recipe, index:true

      t.timestamps null: false
    end
    add_foreign_key :comments, :users
    add_foreign_key :comments, :recipes
  end
end
