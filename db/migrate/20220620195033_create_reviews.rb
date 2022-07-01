class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text :body
      t.integer :score

      t.timestamps
    end
  end
end
