class User < ApplicationRecord
  has_secure_password

  # db relations
  has_many :tackle_box_items
  has_many :catches

  # validations
  validates_presence_of :username, uniqueness: true

end
