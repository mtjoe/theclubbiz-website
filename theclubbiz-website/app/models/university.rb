class University < ActiveRecord::Base
	has_many :UniversityAdmin
	has_many :admin, :through => :UniversityAdmin, :class_name => 'User'
    
	has_many :User
	has_many :Society
	validates_associated :User
	validates_associated :Society
	validates_associated :UniversityAdmin
	validates :name, presence: true, length: { maximum: 255 }
end
