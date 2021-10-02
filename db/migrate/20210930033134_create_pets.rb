class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.integer :pet_id
      t.string :pet_name
      t.string :pet_description
      t.boolean :is_adopted
      t.integer :swag_pts
      
    end
  end
end
