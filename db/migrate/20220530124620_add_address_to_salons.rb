class AddAddressToSalons < ActiveRecord::Migration[6.0]
  def change
    add_column :salons, :address, :string, null: false
  end
end
