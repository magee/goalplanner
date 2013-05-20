class CreateStartups < ActiveRecord::Migration
  def change
    # TODO: find out what their ID syntax is and determine if this table is necessary in production
    create_table :startups do |t|
      t.string :name
      t.timestamps
    end
  end
end
