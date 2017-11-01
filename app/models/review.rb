class Review < ApplicationRecord
  validates :content, presence: true, allow_nil: false
  validates :rating, numericality: {only_integer: true}, inclusion: {in: [0, 1, 2, 3, 4, 5] }
  validates :restaurant_id, presence: true, allow_nil: false

  belongs_to :restaurant
end
