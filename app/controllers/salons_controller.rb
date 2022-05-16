class SalonsController < ApplicationController
  def show
    @salon = Salon.find(params[:id])
  end
end