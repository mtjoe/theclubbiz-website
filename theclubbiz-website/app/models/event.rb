class Event < ActiveRecord::Base
  mount_uploader :image1, Image1Uploader
  mount_uploader :image2, Image2Uploader
  mount_uploader :image3, Image3Uploader
  # Many-to-many associations
  has_many :EventFollower
  has_many :Invitation
  has_many :SocietyEvent
  has_many :Follower, :through => :EventFollower, :source => 'User'
  has_many :Society, :through =>  :SocietyEvent

  # Many-to-one associations
  has_many :EventFeedback
  has_many :Ticket
  belongs_to :Category
  
	validates_associated :Ticket
	validates_associated :EventFeedback
	validates_associated :EventFollower
	validates_associated :SocietyEvent
  validates_associated :Category
  validates_associated :Invitation
  validates :name, presence: true, length: { maximum: 255 }
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :description, presence: true
  validates :short_description, presence: true
  validates :location_address_line1, length: { maximum: 255 }
  validates :location_address_line2, length: { maximum: 255 }
  validates :location_state, length: { maximum: 255 }
  validates :location_city, length: { maximum: 255 }
  validates :location_postcode, presence: true, numericality: { only_integer: true }, length: { maximum: 4 }
  validates :website, length: { maximum: 255 }
  validates :max_tickets, numericality: { only_integer: true }, presence: true
  validates :ticket_price, numericality: { only_integer: true }, presence: true
end
