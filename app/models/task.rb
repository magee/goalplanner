class Task < ActiveRecord::Base
  attr_accessible :description, :due_on, :is_complete, :milestone_id, :order, :owner_id, :title
end
