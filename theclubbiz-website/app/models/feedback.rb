class Feedback < ActiveRecord::Base
	belongs_to :User
	validates :text, presence: true
end
