class CreateExpenses < ActiveRecord::Migration[7.1]
  def change
    create_table :expenses do |t|
      t.integer :user_id
      t.integer :category_id
      t.string :name
      t.integer :amount

      t.timestamps
    end
  end
end
