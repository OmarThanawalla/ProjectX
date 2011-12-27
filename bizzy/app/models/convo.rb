class Convo < ActiveRecord::Base
  has_many :user_convo_bridges
  has_many :messages

end
