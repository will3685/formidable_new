class RemoveServicosToCategoryServicos < ActiveRecord::Migration[6.0]
  def change
    remove_column :categoryservicos, :servicos_id
  end
end
