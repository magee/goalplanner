class Startup < ActiveRecord::Base
  attr_accessible :founder, :founder_email, :name
  has_many :milestones, :dependent => :destroy
  has_many :people
end
