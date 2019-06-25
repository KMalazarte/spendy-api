class UsersController < ApplicationController

  def create
    user = User.create(user_params)

    is_valid = user.valid?

    if is_valid
      render json: { token: encode_token(user) }
    else
      render json: { errors: user.errors.full_messages }
    end

  end

  def profile
    user = User.find_by(username: params['username'])

    render json: current_user
  end

  private

  def user_params
      params.require(:user).permit(:username, :password)
  end

end
