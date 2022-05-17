class AddSalonToCategoryservico < ActiveRecord::Migration[6.0]
  def change
    add_reference :categoryservicos, :salon, null: false, foreign_key: true
  end
end
