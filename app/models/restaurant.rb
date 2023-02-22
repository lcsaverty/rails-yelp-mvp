class Restaurant < ApplicationRecord
  KITCHEN = ["chinese", "italian", "japanese", "french", "belgian"]

  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: KITCHEN }, allow_blank: false
end
