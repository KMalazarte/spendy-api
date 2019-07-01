class PurchasesController < ApplicationController
  # skip_before_action :authorized, only: [:create]

  def index
    @purchases = Purchase.all
    render json: @purchases
  end

  def show
    @purchases = Purchase.select{ |purchase| purchase[:user_id] == params[:user_id].to_i }
    render json: {purchase: @purchases}
  end

  def indiv
    @purchase = Purchase.select{ |purchase| purchase[:id] == params[:purchase_id].to_i }
    render json: @purchase
  end

  def create
    @purchase = Purchase.create(purchase_params)
    render json: {purchase: @purchase}
  end

  def delete
    @purchase = Purchase.find(params[:purchase_id])
    @purchase.destroy
  end

  private

  def purchase_params
    params.permit(:date, :name, :category, :place_of_purchase, :out_of_pocket, :actual_paid, :payment_method, :user_id)
  end

end
