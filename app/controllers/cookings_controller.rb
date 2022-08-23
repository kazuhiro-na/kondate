class CookingsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :show, :destroy]
  def index
    if user_signed_in?
      cookings = Cooking.where(user_id: current_user.id)
      @random = cookings.order('RAND()').limit(5)
      @cookings = cookings.all
    end
  end

  def new
    @cooking_ingredient = CookingIngredient.new
  end

  def create
    @cooking_ingredient = CookingIngredient.new(cooking_params)
    if @cooking_ingredient.valid?
      @cooking_ingredient.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @cooking = Cooking.find(params[:id])
    @ingredient = @cooking.ingredient
  end

  def destroy
    @cooking = Cooking.find(params[:id])
    if current_user.id == @cooking.user_id
      @cooking.ingredient.destroy
      @cooking.destroy
    end
    redirect_to user_path(current_user.id)
  end

  def edit
    @cooking = Cooking.find(params[:id])
    @ingredient = @cooking.ingredient
    cooking_attributes = @cooking.attributes
    ingredient_attributes = @ingredient.attributes
    cooking_ingredient = cooking_attributes.merge(ingredient_attributes)
    @cooking_ingredient = CookingIngredient.new(cooking_ingredient)
  end

  def update
    @cooking = Cooking.find(params[:id])
    @ingredient = @cooking.ingredient
    if @cooking.update(u_cooking_params) && @ingredient.update(u_ingredient_params)
      redirect_to user_path(current_user.id)
    else
      render :edit
    end
  end

  private 

  def cooking_params
    params.require(:cooking_ingredient).permit(:image, :name, :category_id, :ingredient1, :ingredient2, :ingredient3,
                                               :ingredient4, :ingredient5, :ingredient6, :ingredient7).merge(user_id: current_user.id)
  end

  def u_cooking_params
    params.permit(:image, :name, :category_id).merge(user_id: current_user.id)
  end

  def u_ingredient_params
    params.permit(:ingredient1, :ingredient2, :ingredient3, :ingredient4, :ingredient5, :ingredient6, :ingredient7)
  end
end
