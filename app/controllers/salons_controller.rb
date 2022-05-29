class SalonsController < ApplicationController
  before_action :find_salon,  only: [ :show ]
  def show
    @servicos = @salon.servicos
  end

  private

  def find_salon
    @salon = Salon.find(params[:id])
  end
end