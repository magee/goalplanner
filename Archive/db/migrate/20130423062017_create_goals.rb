class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :title
      t.string :short_title
      t.text :description
      t.date :due_on
      t.boolean :is_template
      t.integer :startup_id
      t.boolean :is_complete

      t.timestamps
    end
  end
end
