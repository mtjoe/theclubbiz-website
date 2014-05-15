class Announcement < ActiveRecord::Base
	belongs_to :User
	belongs_to :University
	has_many :SocietyAnnouncement
	validates_associated :SocietyAnnouncement
	validates :subject, presence: true,  length: { maximum: 255 }
	validates :text, presence: true 
end
