class Person < ActiveRecord::Base
  attr_accessible :email, :first_name, :is_active, :last_name
end
