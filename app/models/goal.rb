class Goal < ActiveRecord::Base
  attr_accessible :description, :due_on, :is_complete, :title
  has_many :tasks, :as => :taskable
  belongs_to :milestone

=begin
  TODO:  need to correct for production
  http://stackoverflow.com/questions/936947/filtering-activerecord-queries-in-rails
=end

  scope :not_template,  :conditions => { :is_template => false }
  scope :is_template,  :conditions => { :is_template => true }
  scope :by_startup, lambda { |startup_id| { :conditions => { :startup_id => startup_id }}}

end
