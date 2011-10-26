class Shouts < ActiveRecord::Base
	belongs_to :convo
	belongs_to :users
end
