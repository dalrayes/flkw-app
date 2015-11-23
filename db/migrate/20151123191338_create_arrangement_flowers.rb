class CreateArrangementFlowers < ActiveRecord::Migration
  def change
    create_table :arrangement_flowers do |t|
  	 	t.references :arrangement
      t.references :flower

      t.timestamps null: false
    end
  end
end
