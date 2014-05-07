class SocietyAdmin < ActiveRecord::Base
	belongs_to :User
	belongs_to :Society
end
