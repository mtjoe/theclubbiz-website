class EventCategory < ActiveRecord::Base
	belongs_to :Event
	belongs_to :Category
end
