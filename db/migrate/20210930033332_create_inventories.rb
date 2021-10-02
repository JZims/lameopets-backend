class CreateInventories < ActiveRecord::Migration[6.1]
  def change
    create_table :inventories do |t|
      t.integer :inventory_id
      t.integer :user_id
      t.integer :item_id
      t.timestamps
    end
  end
end
