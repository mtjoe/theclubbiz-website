class UniversityAdmin < ActiveRecord::Base
	belongs_to :University
	belongs_to :User
end
