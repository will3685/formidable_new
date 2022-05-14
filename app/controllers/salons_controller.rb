class SalonsController < ApplicationController
  def show
    def show
      @salon = Salon.find(params[:id])
    end
  end
end