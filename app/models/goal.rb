class Goal < ActiveRecord::Base
  attr_accessible :description, :due_on, :is_complete, :title, :is_template, :short_title, :milestones_attributes, :tasks_attributes
  has_many :milestones
  accepts_nested_attributes_for :milestones, :allow_destroy => true

  has_many :tasks, :through => :milestones
  accepts_nested_attributes_for :tasks

  belongs_to :startup

  scope :not_template,  :conditions => { :is_template => false }
  scope :is_template,  :conditions => { :is_template => true }
  scope :not_complete,  :conditions => { :is_complete => false }
  scope :is_complete,  :conditions => { :is_complete => true }

  scope :by_startup, lambda { |startup_id| { :conditions => { :startup_id => startup_id }}}

  validates :startup_id, :title, :presence => true
  validate :due_on_cannot_be_in_the_past, :if => :due_on_changed?

  def due_on_cannot_be_in_the_past
    if !due_on.blank? and due_on < Date.today
      errors.add(:due_on, "can't be in the past")
    end
  end

  def self.template_goals
    Goal.where("is_template = ?", 1)
  end

end
