class SocietyFeedback < ActiveRecord::Base
	belongs_to :Society
	belongs_to :User
	validates :text, presence: true
end
