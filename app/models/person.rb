class Person < ActiveRecord::Base
  attr_accessible :email, :first_name, :is_active, :last_name
  belongs_to :startup

  def initialize(attributes={})
    @firstname = attributes[:first_name]
    @lastname = attributes[:last_name]
  end

  # TODO: fix this
  def full_name
    return "#{@firstname} #{@lastname} -- method runs - doesn't return name"
  end
end
