class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.string :title
      t.string :short_title
      t.text :description
      t.date :due_on
      t.integer :owner_id
      t.float :percent_complete
      t.boolean :is_complete
      t.integer :order
      t.integer :goal_id
      t.integer :startup_id
      t.boolean :is_template

      t.timestamps
    end
  end
end
