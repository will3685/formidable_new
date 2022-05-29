class AgendamentosController < ApplicationController
  before_action :find_servico, :find_salon,  only: [ :new, :create ]

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

  private

  def find_servico
    @servico = Categoryservico.find_by(params[:id])
  end

  def find_salon
    @salon = Salon.find_by(id: @servico.salon_id)
  end

  def agendamento_params
    params.require(:agendamento).permit(:scheduled_time, :salon_id, :user_id, :categoryservico_id)
  end

end
