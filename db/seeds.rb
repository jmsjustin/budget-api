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

Category.create!(name: "Bills & Subscriptions", recommended_percent: "10%")
Category.create!(name: "Spending", recommended_percent: "25%")
Category.create!(name: "Debt", recommended_percent: "20%")
Category.create!(name: "Savings", recommended_percent: "20%")
