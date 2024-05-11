class Category < ApplicationRecord
  has_many :expenses

  def progress(user)
    total = user.monthly_budget * recommended_percent / 100.0
    total_expenses = 0
    expenses.each do |expense|
      total_expenses += expense.amount
    end
    (100 * total_expenses / total).to_s + "%"
  end
end
