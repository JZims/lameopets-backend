class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.integer :item_id
      t.string :item_name
      t.string :item_description
      t.integer :monies_cost
      
    end
  end
end
