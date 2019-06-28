class PurchasesController < ApplicationController
  # skip_before_action :authorized, only: [:create]

  def index
    @purchases = Purchase.all
    render json: @purchases
  end

  def show
    @purchase = Purchase.select{ |r| r[:user_id] == params[:id].to_i }
    render json: {purchase: @purchase}
  end

  def create
    # byebug
    @purchase = Purchase.create(purchase_params)
    render json: {purchase: @purchase}
  end

  private

  def purchase_params
    params.permit(:date, :name, :category, :place_of_purchase, :out_of_pocket, :actual_paid, :payment_method, :user_id)
  end

end
