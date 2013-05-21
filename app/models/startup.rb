class Startup < ActiveRecord::Base
  #TODO: these are no longer valid fields.  Work out Startup data handling with Magda and Victor
  attr_accessible :founder, :founder_email, :name
  has_many :goals, :dependent => :destroy
  has_many :people, :users
end
