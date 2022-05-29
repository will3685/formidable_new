class AgendamentosController < ApplicationController
  before_action :find_servico, :find_salon, :find_user_agendamento, only: [ :new, :create]
  before_action :find_user_agendamento, only: :index

  def new
    @agendamento = Agendamento.new
  end

  def create
    @agendamento = Agendamento.new(agendamento_params)
    @salon
    @agendamento.save
    if @agendamento.save
      redirect_to salon_path(@salon), notice: "Agendamento realizado com sucesso"
    else
      render :new
    end
  end

  def index
  end

  private

  def find_user_agendamento
    @agendamentos = Agendamento.where(user_id: current_user.id)
  end

  def find_servico
    @categoryservico = Categoryservico.find(params[:categoryservico_id])
  end

  def find_salon
    @salon = Salon.find(@categoryservico.salon_id)
  end

  def agendamento_params
    params.require(:agendamento).permit(:scheduled_time, :salon_id, :user_id, :categoryservico_id)
  end

end
