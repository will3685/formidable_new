class AgendamentosController < ApplicationController
  before_action :find_servico,  only: [ :new, :create ]

  def new
    @agendamento = Agendamento.new
  end

  def create
    @agendamento = Agendamento.new(agendamento_params)
    @agendamento.save
    if @agendamento.save
      redirect_to salon_path(@categoryservico.salon), notice: "Agendamento realizado com sucesso"
    else
      redirect_to new_categoryservico_agendamento_path(@categoryservico.id), notice: "Seu agendamento não foi realizado"
    end
  end

  def index
    @agendamentos = Agendamento.where(user_id: current_user.id)
  end

  private

  def find_servico
    @categoryservico = Categoryservico.find(params[:categoryservico_id])
  end

  def agendamento_params
    params.require(:agendamento).permit(:scheduled_time, :user_id, :categoryservico_id)
  end

end
