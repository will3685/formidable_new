class Api::V1::SalonsController < ApplicationController
  def index
    render json: Salon.all
  end

  def show
    render json: Salon.find_by(id: params[:id])
  end
end