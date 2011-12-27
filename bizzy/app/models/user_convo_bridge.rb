class UserConvoBridge < ActiveRecord::Base
  
  
  belongs_to :convo
  belongs_to :user
  
  
end
