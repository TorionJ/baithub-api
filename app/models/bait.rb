class Bait < ApplicationRecord

  # validations
  validates :name, :category, presence: true
  validates :name, uniqueness: { scope: :category }

end
