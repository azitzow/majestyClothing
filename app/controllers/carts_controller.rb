class CartsController < ApplicationController
  before_action :cart_find, except: [:index, :create]

  def index
    cart = Cart.all
    render json: cart, status: :ok
  end

  def show
    render json: cart_find, status: :ok
  end

  def create
    cart = Cart.create!()
    render json: cart, status: :created
  end

  def update
    cart = cart_find.update!()
    render json: cart, status: :ok
  end

  def destroy
    cart_find.destroy

    head :no_content
  end

  private

  def cart_find
    Cart.find(params[:id])
  end


end
