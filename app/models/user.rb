class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  # has_many :category
  # has_many :expense
end
