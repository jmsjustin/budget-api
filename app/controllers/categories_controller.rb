class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    render :index
  end

  def create
    @category = Category.create(
      name: params[:name],
      recommended_percent: params[:recommended_percent],
    )
    render :show
  end

  def show
    @category = Category.find_by(id: params[:id])
    render :show
  end
end
