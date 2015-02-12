class DashboardController < ApplicationController

  def index
    @current_user = current_user
    @filter_recipes = filter
  end

  private
   def filter
    user_ingreds = current_user.allergies.map{|allergy| allergy.ingredientflag_ids}.flatten
    out = [];
    Recipe.all.map do |rec|
      user_ingreds.each {|id| out << rec if  rec.ingredientflag_ids.include?(id) }
    end
    Recipe.all - out
  end

end
