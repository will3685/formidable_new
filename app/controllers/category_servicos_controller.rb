class CategoryServicosController < ApplicationController
  before_action :find_salon, only: [ :index, :create, :new]
  before_action :find_category_servico, only: [:edit, :update]
  before_action :all_services

  def index
    @category_servicos = CategoryServico.where(salon_id: @salon.id)
  end

  def edit
    @servicos = Servico.all
    @salon = Salon.find_by(id: params[:salon_id])
  end

  def new
    @category_servico = CategoryServico.new
    @servicos = Servico.all
  end

  def create
    @category_servico = CategoryServico.new(category_servico_params)
    p @category_servico
    @category_servico.save
    if @category_servico.save
      redirect_to user_salons_path(current_user.id), notice: "Service saved successfully."
    else
      redirect_to new_salon_category_servico_path(salon_id: @salon.id), notice: "Something goes wrong try again"
    end
  end

  def update
    @salon = Salon.find_by(id: params[:salon_id])
    if @category_servico.update(category_servico_params)
      redirect_to user_salons_path(current_user.id), notice: "Service was successfully updated."
    else
      redirect_to new_salon_category_servico_path(salon_id: @salon.id), notice: "Something goes wrong try again"
    end
  end

  private

  def find_salon
    @salon = Salon.find_by(params[:id])
  end

  def find_category_servico
    @category_servico = CategoryServico.find_by_id(params[:id])
  end

  def all_services
    @services = Servico.all
  end

  def category_servico_params
    params.require(:category_servico).permit(:servico_id, :name, :description, :price, :salon_id )
  end
end
