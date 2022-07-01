class AddSalonAndUserToFavoritos < ActiveRecord::Migration[6.0]
  def change
    add_reference :favoritos, :salon, null: false, foreign_key: true
    add_reference :favoritos, :user, null: false, foreign_key: true
  end
end
