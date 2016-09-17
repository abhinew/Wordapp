class AddActualCategoryColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :words, :cateogry
    add_column :words, :category, :string
  end
end
