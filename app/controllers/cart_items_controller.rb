class CartItemsController < ApplicationController
  before_action :cart_item_find, except: [:index, :create]

  def index
    cart_items = CartItem.all
    render json: cart_items, status: :ok
  end

  def show
    render json: cart_item_find, status: :ok
  end

  def create
    cart_item = CartItem.create!(cart_item_params)
    render json: cart_item, status: :created
  end

  def update
    cart_item = cart_item_find.update!(cart_item_params)
    render json: cart_item, status: :ok
  end

  def destroy
    cart_item_find.destroy

    head :no_content
  end

  private

  def cart_item_params
    params.permit(:quantity, :user_id, :item_id)
  end

  def cart_item_find
    CartItem.find(params[:id])
  end

end
