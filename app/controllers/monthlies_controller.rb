class MonthliesController < ApplicationController

  def show
    @monthly = Monthly.select{ |monthly| monthly[:user_id] == params[:user_id].to_i }
    render json: {monthly: @monthly}
  end

  def indiv
    @monthly = Monthly.select{ |monthly| monthly[:id] == params[:monthly_id].to_i }
    render json: @monthly
  end

end
