class AuthController < ApplicationController

  def login
    byebug
    user = User.find_by(username: params["username"])

  is_authenticated = user.authenticate(params["password"])
    if is_authenticated
      render json: { token: encode_token(user) }
    else
      render json: { error: "Wrong username or password" }
    end

  end

end
