class AddIdUserToSalon < ActiveRecord::Migration[6.0]
  def change
    add_reference :salons, :user, null: false, foreign_key: true
  end
end
