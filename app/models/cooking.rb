class Cooking < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :user
  has_one :ingredient
  has_one_attached :image

end
