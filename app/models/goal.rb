class Goal < ActiveRecord::Base
  attr_accessible :description, :due_on, :is_complete, :title
end
