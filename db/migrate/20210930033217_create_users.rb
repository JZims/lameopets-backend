class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :user_name
      t.string :password_digest
      t.integer :total_monies
    end
  end
end
