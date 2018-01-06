class CreateFoodSwaps < ActiveRecord::Migration[5.0]
  def change
    create_table :food_swaps do |t|
      t.string :title
      t.integer :spots_available

      t.timestamps
    end
  end
end
