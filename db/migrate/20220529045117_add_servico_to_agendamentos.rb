class AddServicoToAgendamentos < ActiveRecord::Migration[6.0]
  def change
    add_reference :agendamentos, :categoryservico, null: false, foreign_key: true
  end
end
