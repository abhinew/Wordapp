class AddCategoryColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :words, :category, :string
  end
end