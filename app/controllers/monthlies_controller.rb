class MonthliesController < ApplicationController

  def index
    @monthlies = Monthly.all
    render json: @monthlies
  end

  def show
    @monthly = Monthly.select{ |monthly| monthly[:user_id] == params[:user_id].to_i }
    render json: {monthly: @monthly}
  end

  def indiv
    @monthly = Monthly.select{ |monthly| monthly[:id] == params[:monthly_id].to_i }
    render json: @monthly
  end

  def create
    @monthly = Monthly.create(monthly_params)
    render json: {monthly: @monthly}
  end

  def edit
    @monthly = Monthly.find(params[:monthly_id])
    @monthly.update(monthly_params)
    render json: @monthly
  end

  def delete
    @monthly = Monthly.find(params[:monthly_id])
    @monthly.destroy
  end

  private

  def monthly_params
    params.permit(:name, :amount, :user_id)
  end

end
