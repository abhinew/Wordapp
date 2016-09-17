class RemoveTimestampsWord < ActiveRecord::Migration[5.0]
  def change
    remove_column :words, :created_at
  end
end
