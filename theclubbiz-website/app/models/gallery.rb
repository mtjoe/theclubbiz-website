class Gallery < ActiveRecord::Base
	belongs_to :User
	belongs_to :Event
	validates :image1,  length: { maximum: 255 }
	validates :image2,  length: { maximum: 255 }
	validates :image3,  length: { maximum: 255 }
end
