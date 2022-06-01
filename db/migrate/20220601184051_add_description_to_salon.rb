class AddDescriptionToSalon < ActiveRecord::Migration[6.0]
  def change
    add_column :salons, :description, :text
  end
end
