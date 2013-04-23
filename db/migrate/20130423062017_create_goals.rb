class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :title
      t.text :description
      t.date :due_on
      t.boolean :is_complete
      t.boolean :is_template

      t.timestamps
    end
  end
end
