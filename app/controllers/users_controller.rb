class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      render json: { resultado: 'Usuario creado' }, status: :created
    else
      render json: { errors: @user.errors }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.permit(:name, :age, :country_id)
  end
end
