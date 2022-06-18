class SalonsController < ApplicationController
  before_action :find_salon, only: [:update, :show, :edit]
  before_action :find_user, only: [:create, :index, :new]
  
  def new
    @salon = Salon.new
  end

  def index
    @salon = Salon.find_by(user_id: @user.id)
  end

  def edit
  end

  def update
    if @salon.update(salon_params)
      redirect_to user_salons_path(current_user.id), notice: "Salon was successfully updated."
    else
      redirect_to edit_salon_path(id: salon.id), notice: "Unsucessful updated."
    end
  end

  def create
    @salon = Salon.new(salon_params)
    @salon.save
    if @salon.save
      @user.has_salon = true
      @user.save
      redirect_to  new_salon_salon_category_path(@salon.id)
    else
      redirect_to new_user_salon_path(@user.id), notice: "Houve um erro no cadastro do seu negocio"
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
    @salon = Salon.find_by_id(params[:id])
  end

  def find_user
    @user = User.find_by_id(params[:user_id])
  end

  def salon_params
    params.require(:salon).permit(:name, :address, :description, :photos, :user_id)
  end
end