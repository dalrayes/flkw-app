class CreateFlowers < ActiveRecord::Migration
  def change
    create_table :flowers do |t|
    	t.string :flower_type

    	t.timestamps null:false
    end
  end
end
