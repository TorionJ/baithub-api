class Bait < ApplicationRecord

  # validations
  validates :name, :category, presence: true
  validates :name, uniqueness: { scope: :category }
  validates :category, :image, presence: true

end
