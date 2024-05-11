# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.create!(name: "Hank", email: "hank@example.com", password: "password", monthly_budget: 3500)

Category.create!(description: "Obviously this is where you put your bills n' shit", name: "Bills & Subscriptions", recommended_percent: "50%")
Category.create!(description: "This is where the rest of your spending shit goes. You know, like Groceries, Golf, your moms allowance, etc... ", name: "Spending", recommended_percent: "30%")
Category.create!(description: "There you go! Now we're talkin'. Be smart with your money, don't do dumb shit like spend money you don't have and go into more debt", name: "Savings", recommended_percent: "20%")
Category.create!(description: "Debt sucks. Nobody likes that person who can't go out because they spend all their money trying to pay off the dumb shit they bought. Don't be that person ", name: "Debt", recommended_percent: "0%")

Expense.create!(user_id: 1, category_id: 1, name: "Netflix", amount: 32)
Expense.create!(user_id: 1, category_id: 1, name: "Rent", amount: 1500)
Expense.create!(user_id: 1, category_id: 1, name: "Internet", amount: 55)
Expense.create!(user_id: 1, category_id: 2, name: "Groceries", amount: 500)
Expense.create!(user_id: 1, category_id: 2, name: "Fuel", amount: 240)
Expense.create!(user_id: 1, category_id: 2, name: "Golf", amount: 150)
Expense.create!(user_id: 1, category_id: 3, name: "Emergency Fund", amount: 14)
Expense.create!(user_id: 1, category_id: 3, name: "House Down Payment", amount: 9)
Expense.create!(user_id: 1, category_id: 4, name: "School Loan", amount: 300)
Expense.create!(user_id: 1, category_id: 4, name: "Car Loan", amount: 500)
