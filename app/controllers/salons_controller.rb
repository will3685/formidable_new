class SalonsController < ApplicationController
  before_action :find_salon,  only: [ :show ]
  def show
    @salon 
    @servicos = @salon.servicos
    # p @servicos
    @servicos.each_with_index do |servico, index|
      @category = Categoryservico.where(servico_id: index+1)
    end
  end

  private

  def find_salon
    @salon = Salon.find(params[:id])
  end
end