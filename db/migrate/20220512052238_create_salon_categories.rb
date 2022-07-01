class CreateSalonCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :salon_categories do |t|

      t.timestamps
    end
  end
end
