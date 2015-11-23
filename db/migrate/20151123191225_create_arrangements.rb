class CreateArrangements < ActiveRecord::Migration
  def change
     create_table :arrangements do |t|
      t.string :name
      t.integer :item_number
      t.float :price
      t.string :availability
      t.string :width
      t.string :height
      t.string :description
      t.string :visibility
      t.string :container_type

      t.timestamps null: false
    end
  end
end
