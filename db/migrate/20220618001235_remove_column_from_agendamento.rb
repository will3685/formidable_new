class RemoveColumnFromAgendamento < ActiveRecord::Migration[6.0]
  def change
    remove_column :agendamentos, :categoryservico_id
  end
end
