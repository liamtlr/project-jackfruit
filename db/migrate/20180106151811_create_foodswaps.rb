class CreateFoodswaps < ActiveRecord::Migration[5.0]
  def change
    create_table :foodswaps do |t|
      t.string :title
      t.integer :spots_available

      t.timestamps
    end
  end
end
