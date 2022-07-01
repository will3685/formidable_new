class AddServicoToServicocategories < ActiveRecord::Migration[6.0]
  def change
    add_reference :categoryservicos, :servicos, null: false, foreign_key: true
  end
end
