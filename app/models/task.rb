class Task < ActiveRecord::Base
  attr_accessible :description, :due_on, :is_complete, :milestone_id, :order, :person_id, :title, :short_title
  belongs_to :milestone
  belongs_to :person

  validate :milestone_id, :presence => true
  validate :title, :presence => true

end
