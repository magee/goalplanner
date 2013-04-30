class Goal < ActiveRecord::Base
  attr_accessible :description, :due_on, :is_complete, :title, :is_template, :short_title
  has_many :milestones
  has_many :tasks
  belongs_to :startup

  scope :not_template,  :conditions => { :is_template => false }
  scope :is_template,  :conditions => { :is_template => true }
  scope :not_complete,  :conditions => { :is_complete => false }
  scope :is_complete,  :conditions => { :is_complete => true }

  scope :by_startup, lambda { |startup_id| { :conditions => { :startup_id => startup_id }}}

end
