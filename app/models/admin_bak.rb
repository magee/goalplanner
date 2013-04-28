class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

=begin
  validates :password, :length => {
    :in => 6..20
    :too_short => "password must have at least 6 characters"
    :too_long => "password must have no more than 20 characters"
  }
=end

  # attr_accessible :title, :body
end
