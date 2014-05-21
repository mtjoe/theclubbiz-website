class Announcement < ActiveRecord::Base

	belongs_to :User
	belongs_to :University
	belongs_to :Society
	validates :subject, presence: true, length: { maximum: 255 }
	validates :text, presence: true
	validate :target_present

	def target_present
		unless university_id || society_id || allSoc
			errors.add(:base, "Plese select a target for the announcement")
		end
	end
end
