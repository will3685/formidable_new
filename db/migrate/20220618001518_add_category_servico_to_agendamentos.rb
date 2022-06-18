class AddCategoryServicoToAgendamentos < ActiveRecord::Migration[6.0]
  def change
    add_reference :agendamentos, :category_servico, null: false, foreign_key: true
  end
end
