class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :expenses

  def starting_budget
    total_budget = 3000
  end
end
