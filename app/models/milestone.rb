class Milestone < ActiveRecord::Base
  attr_accessible :description, :due_on, :goal_id, :is_complete, :order, :title
  belongs_to :goal
  has_many :tasks, :as => :taskable
end
