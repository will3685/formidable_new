class SalonsController < ApplicationController
  before_action :find_salon,  only: [ :show ]
  before_action :find_user, only: [ :new, :create]
  
  def new
    @salon = Salon.new
  end

  def create
    @salon = Salon.new(salon_params)
    @salon.save
    @user.has_salon = true
    @user.save
    # if @agendamento.save
    #   @user.has_salon? 
    #  redirect_to salon_path(@categoryservico.salon), notice: "Agendamento realizado com sucesso"
    # else
    #   redirect_to new_categoryservico_agendamento_path(@categoryservico.id), notice: "Seu agendamento não foi realizado"
    # end
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