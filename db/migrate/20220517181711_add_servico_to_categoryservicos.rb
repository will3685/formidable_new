class AddServicoToCategoryservicos < ActiveRecord::Migration[6.0]
  def change
    add_reference :categoryservicos, :servico, null: false, foreign_key: true
  end
end
