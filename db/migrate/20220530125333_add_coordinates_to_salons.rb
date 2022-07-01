class AddCoordinatesToSalons < ActiveRecord::Migration[6.0]
  def change
    add_column :salons, :latitude, :float
    add_column :salons, :longitude, :float
  end
end
