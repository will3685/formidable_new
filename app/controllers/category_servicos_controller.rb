class CategoryServicosController < ApplicationController
  before_action :find_salon

  def new
    @categoryservico = CategoryServico.new
    @servicos = Servico.all
  end

  def create
    @categoryservico = CategoryServico.new(category_servico_params)
    @categoryservico.save
    if @categoryservico.save
      redirect_to user_salons_path(current_user.id), notice: "Service saved successfully."
    else
      redirect_to new_salon_category_servico_path(@salon.id), notice: "Something goes wrong try again"
    end
  end

  private

  def find_salon
    @salon = Salon.find_by(params[:id])
  end

  def category_servico_params
    params.require(:category_servico).permit(:name, :description, :price, :salon_id, :servico_id)
  end
end
