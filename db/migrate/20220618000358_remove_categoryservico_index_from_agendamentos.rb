class RemoveCategoryservicoIndexFromAgendamentos < ActiveRecord::Migration[6.0]
  def change
    remove_index :agendamentos, name: "index_agendamentos_on_categoryservico_id"
  end
end
