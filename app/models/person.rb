class Person < ActiveRecord::Base
  attr_accessible :email, :first_name, :is_active, :last_name
  belongs_to :startup
  has_many :tasks
end
