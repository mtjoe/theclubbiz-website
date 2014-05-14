class Network < ActiveRecord::Base
	has_many :SocietyNetwork
	validates_associated :SocietyNetwork
	validates :Name, presence :true, length: { maximum: 255 }
end
