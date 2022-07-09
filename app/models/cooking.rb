class Cooking < ApplicationRecord
  with_options presence: true do
    validates :image
    validates :name
    validates :category
  end
end
