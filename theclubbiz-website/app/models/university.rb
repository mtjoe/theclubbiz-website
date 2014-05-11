class University < ActiveRecord::Base
	has_many :UserUniversity
	has_many :SocietyUniversity
	validates :name, presence: true, length: { maximum: 255 }
end
