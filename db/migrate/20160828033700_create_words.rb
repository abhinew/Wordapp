class CreateWords < ActiveRecord::Migration[5.0]
  def change
    create_table :words do |t|

      t.timestamps
    end
  end
end
