# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.create!(name: "Hank", email: "hank@example.com", password: "password")

Category.create!(id: 1, name: "Food", recommended_percent: "10%")
Category.create!(id: 2, name: "Housing", recommended_percent: "25%")
Category.create!(id: 3, name: "Transportation", recommended_percent: "20%")

Expense.create!(user_id: 1, category_id: 2, name: "Rent", amount: 2500)
Expense.create!(user_id: 2, category_id: 1, name: "Groceries", amount: 500)
