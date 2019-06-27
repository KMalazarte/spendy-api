class AuthController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create # POST /login
    @user = User.find_by(username: user_login_params[:username])
    # @user.authenticate('password')
    if @user && @user.authenticate(user_login_params[:password])
      @token = encode_token({ user_id: @user.id })
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :accepted
    else
      render json: { message: 'Invalid username or password' }, status: :unauthorized
    end
  end

  private

  def user_login_params
    # { user: { username: 'Chandler Bing', password: 'hi' } }
    params.require(:user).permit(:username, :password)
  end

end
  #
  # def login
  #   user = User.find_by(username: params["username"])
  #
  # is_authenticated = user.authenticate(params["password"])
  #   if is_authenticated
  #     render json: { token: encode_token(user) }
  #   else
  #     render json: { error: "Wrong username or password" }
  #   end
  #
  # end

# end
