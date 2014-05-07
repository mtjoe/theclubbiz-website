class Ticket < ActiveRecord::Base
	belongs_to :Event
  	belongs_to :User
end
