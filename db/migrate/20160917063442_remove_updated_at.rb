class RemoveUpdatedAt < ActiveRecord::Migration[5.0]
  def change
    remove_column :words, :updated_at
  end
end
