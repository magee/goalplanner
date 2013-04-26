class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.boolean :is_active
      t.integer :startup_id
      t.boolean :is_founder

      t.timestamps
    end
  end
end
