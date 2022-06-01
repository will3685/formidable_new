class AddColumnHassalonToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :has_salon, :boolean, :default => false
  end
end
