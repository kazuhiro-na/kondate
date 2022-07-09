class CookingIngredient
  include ActiveModel::Model
  attr_accessor :image, :name, :category, :ingredient1, :ingredient2, :ingredient3, :ingredient4, :ingredient5, :ingredient6, :ingredient7, :user_id
end
with_options presence: true do
  validates :image
  validates :name
  validates :category
  validates :user_id
end