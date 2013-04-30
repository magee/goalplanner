class Task < ActiveRecord::Base
  attr_accessible :description, :due_on, :is_complete, :milestone_id, :order, :owner_id, :title, :short_title, :goal_id
  belongs_to :milestone
  belongs_to :goal
end
