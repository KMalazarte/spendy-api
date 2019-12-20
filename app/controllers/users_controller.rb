class UsersController < ApplicationController
  # skip_before_action :authorized, only: [:create]

  # def index
  #   @all = User.all
  #
  # end

  def profile
    render json: { user: UserSerializer.new(current_user()) }, status: :accepted
  end

  def edit
    @user = User.find(params[:user_id])
    @user.update(user_params)
    render json: @user
  end

  def show
    @user = User.find(params[:user_id])
    render json: {user: @user}
  end


  def create
    @user = User.create(user_params)
    if !@user.valid?
      return render json: { error: 'failed to create user' }, status: :not_acceptable
    end
    @token = encode_token(user_id: @user.id)
    render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
  end
  # if @user.valid?
  #   @token = encode_token(user_id: @user.id)
  #   render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
  # else
  #   render json: { error: 'failed to create user' }, status: :not_acceptable
  # end

  # guard_clause - pattern refactor if statements to reduce complexity, test for error case earlier on, when there is ther error return early
  # one if statement no else clause behavior wont change

  private

  def user_params
    params.require(:user).permit(:username, :password, :avatar, :monthly_take_home)
  end


end
