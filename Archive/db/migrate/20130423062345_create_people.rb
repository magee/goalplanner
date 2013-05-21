class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :email, :null => false
      t.boolean :is_active, :null => false, :default => true
      t.integer :startup_id, :null => false
      t.boolean :is_founder, :null => false, :default => false

      t.timestamps
    end
  end
end
