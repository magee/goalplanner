class Goal < ActiveRecord::Base
  attr_accessible :description, :due_on, :is_complete, :title, :is_template, :short_title, :milestones_attributes, :tasks_attributes
  has_many :milestones
  accepts_nested_attributes_for :milestones

  has_many :tasks, :through => :milestones
  accepts_nested_attributes_for :tasks

  belongs_to :startup

  scope :not_template,  :conditions => { :is_template => false }
  scope :is_template,  :conditions => { :is_template => true }
  scope :not_complete,  :conditions => { :is_complete => false }
  scope :is_complete,  :conditions => { :is_complete => true }

  scope :by_startup, lambda { |startup_id| { :conditions => { :startup_id => startup_id }}}

  validate :startup_id, :presence => true
  validate :title, :presence => true

end
