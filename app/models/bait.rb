class Bait < ApplicationRecord

  # validations
  validates :category, uniqueness: true

end
