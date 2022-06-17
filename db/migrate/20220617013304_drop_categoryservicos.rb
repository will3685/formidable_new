class DropCategoryservicos < ActiveRecord::Migration[6.0]
  def change
    drop_table :categoryservicos, force: :cascade
  end
end
