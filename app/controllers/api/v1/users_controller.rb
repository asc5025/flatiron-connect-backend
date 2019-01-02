class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:update, :destroy]

  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.find_or_create_by(user_params)
    if @user.valid?
      render json: @user, status: :created
    else
      errors = @user.errors.full_messages
      user = JSON::parse(@user.to_json).merge({"errors" => errors})
      render :json => user, status: 400
    end
  end

  def update
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @user.destroy
    render status: 204
  end

  private

  def user_params
    params.require(:user).permit(:firstname, :lastname, :email, :company, :industry, :position)
  end

  def find_user
    @user = User.find(params[:id])
  end

end
