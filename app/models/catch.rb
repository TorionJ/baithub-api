class Catch < ApplicationRecord

  # db relations
  belongs_to :bait
  belongs_to :user

  # validations
  validates :weight, numericality: true
  validates :species, presence: true

end
