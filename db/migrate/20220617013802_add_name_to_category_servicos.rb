class AddNameToCategoryServicos < ActiveRecord::Migration[6.0]
  def change
    add_column :category_servicos, :name, :string, null: false
    add_column :category_servicos, :description, :text, null: false
    add_column :category_servicos, :price, :decimal, :precision => 8, :scale => 2, null: false
  end
end
