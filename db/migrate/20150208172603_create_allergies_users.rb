class CreateAllergiesUsers < ActiveRecord::Migration
  def change
    create_table :allergies_users do |t|
      t.belongs_to :user, index: true
      t.belongs_to :allergy, index: true
    end
  end
end
