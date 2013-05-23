class Task < ActiveRecord::Base
  attr_accessible :description, :due_on, :is_complete, :milestone_id, :order, :person_id, :title, :short_title
  belongs_to :milestone
  belongs_to :person

  validates :milestone_id, :title, :presence => true
  validate :due_on_cannot_be_in_the_past

  def due_on_cannot_be_in_the_past
    if !due_on.blank? and due_on < Date.today
      errors.add(:due_on, "can't be in the past")
    end
  end

end
