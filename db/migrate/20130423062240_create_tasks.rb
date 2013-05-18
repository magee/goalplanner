class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :short_title
      t.text :description
      t.date :due_on
      t.integer :person_id
      t.boolean :is_complete
      t.integer :order
      t.integer :milestone_id
      t.boolean :is_template

      t.timestamps
    end
  end
end
