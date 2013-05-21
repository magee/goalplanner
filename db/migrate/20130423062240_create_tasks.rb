class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title, :null => false,
      t.string :short_title
      t.text :description
      t.date :due_on
      t.integer :person_id
      t.boolean :is_complete, :default => 0
      t.integer :order
      t.integer :milestone_id, :null => false
      t.boolean :is_template, :default => 0

      t.timestamps
    end
  end
end
