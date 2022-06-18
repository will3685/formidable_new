class AgendamentosController < ApplicationController
  before_action :find_servico,  only: [ :new, :create ]

  def new
    @agendamento = Agendamento.new
  end

  def create
    @agendamento = Agendamento.new(agendamento_params)
    @agendamento.save
    if @agendamento.save
      redirect_to salon_path(@category_servico.salon), notice: "Your appointment was saved"
    else
      redirect_to new_category_servico_agendamento_path(@category_servico.id), notice: "Try again"
    end
  end

  def index
    @agendamentos = Agendamento.where(user_id: current_user.id)
  end

  private

  def find_servico
    @category_servico = CategoryServico.find_by(id: params[:category_servico_id])
  end

  def agendamento_params
    params.require(:agendamento).permit(:scheduled_time, :user_id, :category_servico_id)
  end

end
