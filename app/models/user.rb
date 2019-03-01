class User < ApplicationRecord

  # db relations
  has_many :tackle_box_items
  has_many :catches

end
