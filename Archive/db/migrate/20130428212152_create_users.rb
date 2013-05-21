class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password
      t.string :email, :null => false, :default => ""
      t.integer :person_id
      t.boolean :is_admin
      t.integer :startup_id

      t.timestamps

    end
    add_index :users, :email, :unique => true
  end
end
