class MeaningColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :words, :meaning, :text
  end
end
