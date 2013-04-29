class Goal < ActiveRecord::Base
  attr_accessible :description, :due_on, :is_complete, :title
  has_many :tasks, :as => :taskable
  belongs_to :milestone

  scope :not_template,  :conditions => { :is_template => false }
  scope :is_template,  :conditions => { :is_template => true }
  scope :by_startup, lambda { |startup_id| { :conditions => { :startup_id => startup_id }}}

end
