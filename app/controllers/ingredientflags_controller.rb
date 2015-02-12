class IngredientflagsController < ApplicationController

  def index
    @ingredientflags = Ingredientflag.all
  end

end
