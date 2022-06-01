class SalonsController < ApplicationController
  before_action :find_salon,  only: [ :show ]
  before_action :find_user, only: [ :new, :create, :index]
  
  def new
    @salon = Salon.new
  end

  def index
    @salons = Salon.where(user_id: @user.id)
  end

  def edit
  end

  def create
    @salon = Salon.new(salon_params)
    @salon.save
    if @salon.save
      @user.has_salon = true
      @user.save
     redirect_to user_salons_path, notice: "Seu negocio foi cadastrado com sucesso"
    else
      redirect_to new_user_salon_path, notice: "Houve um erro no cadastro do seu negocio"
    end
  end

  def show 
    @servicos = @salon.servicos
      marker = { 
        lat: @salon.latitude, 
        lng: @salon.longitude,
        info_window: render_to_string(partial: "info_window", locals: { salon: @salon })
      }
      @markers = []
      @markers << marker
  end

  private

  def find_salon
    @salon = Salon.find(params[:id])
  end

  def find_user
    @user = User.find(params[:user_id])
  end

  def salon_params
    params.require(:salon).permit(:name, :address, :photos, :user_id)
  end
end