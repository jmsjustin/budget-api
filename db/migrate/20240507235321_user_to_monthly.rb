class UserToMonthly < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :monthly_budget, :integer
  end
end
