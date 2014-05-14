class EventFeedback < ActiveRecord::Base
	belongs_to :Event
	belongs_to :User
	validates :text, presence: true
end
