class AddIdToCategoryServicos < ActiveRecord::Migration[6.0]
  def change
    add_reference :category_servicos, :salon, null: false, foreign_key: true
    add_reference :category_servicos, :servico, null: false, foreign_key: true
  end
end
