class RecipesController < ApplicationController
  before_action :set_user, only: [:index, :new, :create]
  before_action :set_recipe, only: [:edit, :update, :destroy, :show]

  def index
    @recipes = @user.recipes
    @filter_recipes = Recipe.filter(current_user)
  end

  def new
    @recipe = Recipe.new
  end

  def show
    @ingredients = split_ingredients
    @allergens = @recipe.find_allergens
    @rating_exist = rating_exist.nil? ? false : true
  end

  def create
    @recipe = @user.recipes.new(recipe_params)
    @recipe_flagged = @recipe.flagged_ingredients()
    @recipe.ingredientflag_ids = @recipe_flagged unless @recipe_flagged.empty?
    if @recipe.save
      flash[:success] = 'Recipe successfully created.'
      redirect_to user_recipes_path(@user)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @recipe.update(recipe_params)
      flash[:success] = 'Recipe successfully saved.'
      redirect_to user_recipes_path(@recipe.user_id)
    else
      render :edit
    end
  end

  def destroy
    if @recipe.destroy
      flash[:success] = 'Recipe successfully destroyed.'
      redirect_to user_recipes_path(@recipe.user_id)
    else
      flash[:error] = 'Failed to destroy recipe.'
      render :edit
    end
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def split_ingredients
    @recipe.ingredients.split(',')
  end

  def rating_exist
    Rate.all.find_by(rater_id: current_user.id)
  end

  def recipe_params
    params.require(:recipe).permit(:picture, :title, :ingredients, :category, :directions, :user_id, { ingredientflag_ids:[] })
  end

end
