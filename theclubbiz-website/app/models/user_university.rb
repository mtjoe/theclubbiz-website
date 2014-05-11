class UserUniversity < ActiveRecord::Base
	belongs_to :User
	belongs_to :University
end
