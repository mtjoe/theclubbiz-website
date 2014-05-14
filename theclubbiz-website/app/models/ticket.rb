class Ticket < ActiveRecord::Base
	belongs_to :Event
  	belongs_to :User
  	validates :price, numericality: { only_integer: true }, presence: true
end
