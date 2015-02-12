class AddAttachmentPictureToRecipes < ActiveRecord::Migration
  def self.up
    change_table :recipes do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :recipes, :picture
  end
end
