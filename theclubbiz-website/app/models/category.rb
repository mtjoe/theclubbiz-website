class Category < ActiveRecord::Base
	has_many :event
	has_many :society
	validates_associated :event
	validates_associated :society
	validates :name, presence: true, length: { maximum: 255 }
end
