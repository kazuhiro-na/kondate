class CookingIngredient
  include ActiveModel::Model
  attr_accessor :image, :name, :category_id, :ingredient1, :ingredient2, :ingredient3, :ingredient4, :ingredient5, :ingredient6,
                :ingredient7, :user_id,
                :id, :cooking_id, :created_at, :datetime, :updated_at, :datetime

  with_options presence: true do
    validates :image
    validates :name
    validates :category_id
    validates :user_id
  end

  def save
    cooking = Cooking.create(image: image, name: name, category_id: category_id, user_id: user_id)
    ingredient = Ingredient.create(ingredient1: ingredient1, ingredient2: ingredient2, ingredient3: ingredient3, ingredient4: ingredient4,
                      ingredient5: ingredient5, ingredient6: ingredient6, ingredient7: ingredient7, cooking_id: cooking.id)
  end

  def update(id)
    cooking = Cooking.find(id)
    ingredient = cooking.ingredient
    cooking.update(image: image, name: name, category_id: category_id, user_id: user_id)
    ingredient.update(ingredient1: ingredient1, ingredient2: ingredient2, ingredient3: ingredient3, ingredient4: ingredient4,
                      ingredient5: ingredient5, ingredient6: ingredient6, ingredient7: ingredient7, cooking_id: cooking.id)
  end
end
