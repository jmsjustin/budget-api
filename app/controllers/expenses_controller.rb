class ExpensesController < ApplicationController
  def index
    @expenses = Expense.all
    render :index
  end

  def create
    @expense = Expense.create(
      user_id: 1,
      category_id: params[:category_id],
      name: params[:name],
      amount: params[:amount],
    )
    render :show
  end

  def show
    @expense = Expense.find_by(id: params[:id])
    render :show
  end

  def update
    @expense = Expense.find_by(id: params[:id])
    @expense.update(
      user_id: params[:user_id] || @expense.user_id,
      category_id: params[:category_id] || @expense.category_id,
      name: params[:name] || @expense.name,
      amount: params[:amount] || @expense.amount,
    )
    render :show
  end

  def destroy
    @expense = Expense.find_by(id: params[:id])
    @expense.destroy
    render json: { message: "Expense destroyed successfully" }
  end
end
