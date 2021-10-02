class CreateAdoptions < ActiveRecord::Migration[6.1]
  def change
    create_table :adoptions do |t|
      t.integer :adoption_id
      t.integer :user_id
      t.integer :pet_id
      t.datetime :adoption_date
    end
  end
end
