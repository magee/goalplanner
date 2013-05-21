class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name, :null => false,
      t.string :password, :null => false,
      t.string :email, :null => false, :default => ""
      t.integer :person_id
      t.boolean :is_admin, :default => 0
      t.integer :startup_id, :null => false

      t.timestamps

    end
    add_index :users, :email, :unique => true
  end
end
