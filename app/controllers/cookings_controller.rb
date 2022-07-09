class CookingsController < ApplicationController
  def index
  end

  def new
    @cooking = Cooking.new
  end

  def create
    @cooking = Cooking.create(cooking_params)
    Ingredient.create(ingredient_params)
    redirect_to root_path
  end

  private

  def cooking_params
    params.permit(:name, :category, :image).merge(user_id: current_user.id)
  end

  def ingredient_params
    params.permit(:ingredient1, :ingredient2, :ingredient3, :ingredient4, :ingredient5, :ingredient6, :ingredient7).merge(cooking_id: @cooking.id)
  end
end
