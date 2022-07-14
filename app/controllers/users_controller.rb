class UsersController < ApplicationController
  def index
    render json: User.all
  end

  # GET '/me'
  def show
    if current_user
      render json: current_user, status: :ok
    else
      render json: { errors: "No active session" }, status: :unauthorized
    end
  end

  # POST '/signup'
  def create
    user = User.create(user_params)
    if user.valid?
      session[:user_id] = user.id
      render json: user, status: :created
    else
      render json: {error: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.permit( :email, :username, :password, :cart_id)
  end
end
