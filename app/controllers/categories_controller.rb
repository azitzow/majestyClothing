class CategoriesController < ApplicationController
  before_action :category_find, except: [:index, :create]

  def index
    category = Category.all
    render json: category, status: :ok
  end

  def show
    render json: category_find, status: :ok
  end

  def create
    category = Category.create!(category_params)
    render json: category, status: :created
  end

  def update
    category = category_find.update!(category_params)
    render json: category, status: :ok
  end

  def destroy
    category_find.destroy

    head :no_content
  end

  private

  def category_params
    params.permit(:title, :imageUrl)
  end

  def category_find
    Category.find(params[:id])
  end

end
