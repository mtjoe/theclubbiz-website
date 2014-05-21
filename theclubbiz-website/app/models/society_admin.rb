class SocietyAdmin < ActiveRecord::Base
	belongs_to :user
	belongs_to :society
	accepts_nested_attributes_for :user
end
