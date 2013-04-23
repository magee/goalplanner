class Milestone < ActiveRecord::Base
  attr_accessible :description, :due_on, :goal_id, :is_complete, :order, :title
end
