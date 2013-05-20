class Milestone < ActiveRecord::Base
  attr_accessible :description, :due_on, :goal_id, :is_complete, :order, :title, :percent_complete, :tasks_attributes
  belongs_to :goal
  has_many :tasks
  accepts_nested_attributes_for :tasks, :allow_destroy => true

  scope :not_template,  :conditions => { :is_template => false }
  scope :is_template,  :conditions => { :is_template => true }
  scope :not_complete,  :conditions => { :is_complete => false }
  scope :is_complete,  :conditions => { :is_complete => true }

  validates :goal_id, :title :presence => true

  validate :due_on_cannot_be_in_the_past

  def due_on_cannot_be_in_the_past
    if !due_on.blank? and due_on < Date.today
      errors.add(:due_on, "can't be in the past")
    end
  end

end
