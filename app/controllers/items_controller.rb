class ItemsController < ApplicationController
  before_action :item_find, except: [:index, :create]

  def index
    item = Item.all
    render json: item, status: :ok
  end

  def show
    render json: item_find, status: :ok
  end

  def create
    item = Item.create!(item_params)
    render json: item, status: :created
  end

  def update
    item = item_find.update!(item_params)
    render json: item, status: :ok
  end

  def destroy
    item_find.destroy

    head :no_content
  end

  private

  def item_find
    Item.find(params[:id])
  end

  def item_params
    params.permit(:imageUrl, :description, :price, :category_id)
  end
end
