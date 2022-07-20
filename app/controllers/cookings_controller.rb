class CookingsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :show]
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

  private 

  def cooking_params
    params.require(:cooking_ingredient).permit(:image, :name, :category_id, :ingredient1, :ingredient2, :ingredient3,
                                               :ingredient4, :ingredient5, :ingredient6, :ingredient7).merge(user_id: current_user.id)
  end
end
