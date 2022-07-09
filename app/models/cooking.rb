class Cooking < ApplicationRecord
  belongs_to :user
  has_one :ingredient

  with_options presence: true do
    validates :image
    validates :name
    validates :category
  end
end
