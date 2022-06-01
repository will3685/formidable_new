class SalonsController < ApplicationController
  before_action :find_salon,  only: [ :show ]
  before_action :find_user, only: [ :new ]
  
  def new
    @salon = Salon.new
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
end