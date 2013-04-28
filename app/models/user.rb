class User < ActiveRecord::Base
  attr_accessible :is_admin, :password, :person_id, :user_name
end
