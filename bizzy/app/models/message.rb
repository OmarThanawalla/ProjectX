class Message < ActiveRecord::Base
  
  
  belongs_to :user
  belongs_to :convo
  
  validates_presence_of :SMS
  validates_length_of :SMS, :maximum => 160
  
  
end
