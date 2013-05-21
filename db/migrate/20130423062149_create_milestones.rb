class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.string :title, :null => false
      t.string :short_title
      t.text :description
      t.date :due_on
      t.integer :person_id
      t.float :percent_complete
      t.boolean :is_complete, :default = 0
      t.integer :order
      t.integer :goal_id, :null => false
      t.boolean :is_template, :default = 0

      t.timestamps
    end
  end
end
