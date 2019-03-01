class TackleBoxItem < ApplicationRecord

  # db relations
  belongs_to :bait
  belongs_to :user

end
