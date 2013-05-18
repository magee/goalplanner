class Milestone < ActiveRecord::Base
  attr_accessible :description, :due_on, :goal_id, :is_complete, :order, :title, :percent_complete, :tasks_attributes
  belongs_to :goal
  has_many :tasks
  accepts_nested_attributes_for :tasks

  scope :not_template,  :conditions => { :is_template => false }
  scope :is_template,  :conditions => { :is_template => true }
  scope :not_complete,  :conditions => { :is_complete => false }
  scope :is_complete,  :conditions => { :is_complete => true }

  validate :goal_id, :presence => true
  validate :title, :presence => true
end
