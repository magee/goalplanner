class Milestone < ActiveRecord::Base
  attr_accessible :description, :due_on, :goal_id, :is_complete, :order, :title
  belongs_to :goal
  has_many :tasks

  scope :not_template,  :conditions => { :is_template => false }
  scope :is_template,  :conditions => { :is_template => true }
  scope :not_complete,  :conditions => { :is_complete => false }
  scope :is_complete,  :conditions => { :is_complete => true }

  def initialize(attributes = {})
  end
end
