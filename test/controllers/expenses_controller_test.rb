require "test_helper"

class ExpensesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/expenses.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Expense.count, data.length
  end

  test "create" do
    assert_difference "Expense.count", 1 do
      post "/expenses.json", params: { user_id: 1, category_id: 2, name: "House", amount: 5000 }
      assert_response 200
    end
  end

  test "show" do
    get "/expenses/#{Expense.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "user_id", "category_id", "name", "amount", "created_at", "updated_at"], data.keys
  end

  test "update" do
    expense = Expense.first
    patch "/expenses/#{expense.id}.json", params: { name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
  end

  test "destroy" do
    assert_difference "Expense.count", -1 do
      delete "/expenses/#{Expense.first.id}.json"
      assert_response 200
    end
  end
end
