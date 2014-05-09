class Category < ActiveRecord::Base
	has_many: EventCategory
	has_many: SocietyCategory
	validates :name, presence: true
end
