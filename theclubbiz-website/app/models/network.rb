class Network < ActiveRecord::Base
	has_many :SocietyNetwork
	belongs_to :User
	validates_associated :SocietyNetwork
	validates :name, presence :true, length: { maximum: 255 }
	validates :description, presence :true
end
