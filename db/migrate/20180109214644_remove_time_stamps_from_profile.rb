class RemoveTimeStampsFromProfile < ActiveRecord::Migration[5.0]
  def change
    remove_column :profiles, :created_at, :string
    remove_column :profiles, :updated_at, :string
  end
end
