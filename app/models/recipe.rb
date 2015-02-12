class Recipe < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_and_belongs_to_many :ingredientflags
  has_attached_file :picture, styles: { medium: "270x270>", thumb: "100x100>" }, :default_url => "1908bowlMeascupSpoon.png"

   ratyrate_rateable "title"
  # validates_attachment_content_type :picture, :content_type => ["picture/jpg", "picture/jpeg", "picture/png", "picture/gif"]
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/

  validates :title, :ingredients, :directions, presence: true, length: { minimum: 3}

  validates :user_id, presence: true

  GROUPS = %w{ appetizer breakfast dessert entree salad side_dish snack soup other }
  validates :category, inclusion: {in: GROUPS, message: 'is Invalid'}

  def self.filter(user)
    user_ingreds = user.allergies.map{|allergy| allergy.ingredientflag_ids}.flatten
    out = [];
    Recipe.all.map do |rec|
      user_ingreds.each {|id| out << rec if  rec.ingredientflag_ids.include?(id) }
    end
    Recipe.all - out
  end

  def flagged_ingredients
    @recipe_flags_ids = []
    @temp_ingredients = self.ingredients.downcase
    @ingredientflags = Ingredientflag.all.sort_by {|ingredient| ingredient.name.length}.reverse

    @ingredientflags.each do |ingredientflag|
      if @temp_ingredients.include?(ingredientflag.name.downcase)
           @temp_ingredients.sub(ingredientflag.name.downcase," ")
          @recipe_flags_ids << ingredientflag.id

      end
    end
    return @recipe_flags_ids
  end
end
