class Event < ActiveRecord::Base
	  has_many :Ticket
  	has_many :EventFeedback
  	has_many :EventFollower
  	has_many :SocietyEvent
  	has_one  :Gallery
    has_many :EventCategory
  	validates_associated :Ticket
  	validates_associated :EventFeedback
  	validates_associated :EventFollower
  	validates_associated :SocietyEvent
  	validates_associated :Gallery
    validates_associated :EventCategory
    validates :name, presence: true, length: { maximum: 255 }
    validates :time, presence: true
    validates :location_address_line1, length: { maximum: 255 }
    validates :location_address_line2, length: { maximum: 255 }
    validates :location_state, length: { maximum: 255 }
    validates :location_city, length: { maximum: 255 }
    validates :location_postcode, presence: true, numericality: { only_integer: true }, length: { maximum: 4 }
    validates :website, length: { maximum: 255 }, inclusion: { in: %w(http https) }
    validates :max_tickets, numericality: { only_integer: true }, presence: true
end
