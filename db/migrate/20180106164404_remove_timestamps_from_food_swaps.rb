class RemoveTimestampsFromFoodSwaps < ActiveRecord::Migration[5.0]
  def change
    remove_column :food_swaps, :created_at, :string
    remove_column :food_swaps, :updated_at, :string
  end
end
