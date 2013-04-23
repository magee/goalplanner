class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.string :title
      t.text :description
      t.date :due_on
      t.boolean :is_complete
      t.integer :order
      t.integer :goal_id

      t.timestamps
    end
  end
end
