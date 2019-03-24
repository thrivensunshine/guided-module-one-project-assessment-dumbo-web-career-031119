class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :station_id
      t.integer :rating
      t.string :comment
      t.string :suggestion

      t.timestamps
    end
  end
end
