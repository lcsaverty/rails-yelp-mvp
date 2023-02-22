class Review < ApplicationRecord
  RATING = (0..5)
  belongs_to :restaurant
  validates :rating, :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: RATING }
end
