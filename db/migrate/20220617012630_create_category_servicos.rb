class CreateCategoryServicos < ActiveRecord::Migration[6.0]
  def change
    create_table :category_servicos do |t|

      t.timestamps
    end
  end
end
