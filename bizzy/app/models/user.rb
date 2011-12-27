class User < ActiveRecord::Base
  
  
  
  
  has_many :messages
  has_many :user_convo_bridges
  
  
  #algorithm to verify proper email address
  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
  
  validates_presence_of :first_name
  validates_length_of :first_name, :maximum => 25
  
  validates_presence_of :last_name
  validates_length_of :last_name, :maximum => 50
  
  validates_presence_of :email
  validates_length_of :email, :maximum =>100
  validates_uniqueness_of :email
  #validate email address using EMAIL_REGEX
  validates_format_of :email, :with => EMAIL_REGEX
  
  validates_presence_of :first_name
  validates_length_of :first_name, :maximum => 25
  
  
  #so im going to assign to s.email_confirmation the retype email address, i will then check if they two email addresses match and then proceed from there
  validates_confirmation_of :email
  
  validates_presence_of :password
  
  
  
end
