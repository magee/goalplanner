class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :title, :null => false
      t.string :short_title
      t.text :description
      t.date :due_on
      t.boolean :is_template, :default => 0
      t.integer :startup_id, :null => false
      t.boolean :is_complete, :default = 0

      t.timestamps
    end
  end
end
