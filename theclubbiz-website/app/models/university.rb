class University < ActiveRecord::Base
	has_many :UserUniversity
	has_many :SocietyUniversity
	has_many :UniversityAdmin
	validates_associated :UserUniversity
	validates_associated :SocietyUniversity
	validates_associated :UniversityAdmin
	validates :name, presence: true, length: { maximum: 255 }
	validates :logo,  length: { maximum: 255 }
end
