class Category < ActiveRecord::Base
	has_many :EventCategory
	has_many :SocietyCategory
	validates_associated :EventCategory
	validates_associated :SocietyCategory
	validates :name, presence: true, length: { maximum: 255 }
end
