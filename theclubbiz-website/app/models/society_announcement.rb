class SocietyAnnouncement < ActiveRecord::Base
	belongs_to :Society
	belongs_to :Announcement
end
