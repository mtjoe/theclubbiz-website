class Society < ActiveRecord::Base
  mount_uploader :logo, LogoUploader

  # Many-to-many relationships
	has_many :SocietyAdmin
	has_many :SocietyEvent
	has_many :SocietyFollower
  has_many :SocietyNetwork

  has_many :admin, :through => :SocietyAdmin, :source => 'user'
  has_many :follower, :through => :SocietyFollower, :source => 'user'
  has_many :event, :through => :SocietyEvent
  has_many :network, :through => :SocietyNetwork

  # Many-to-one relationships
  belongs_to :Category
  belongs_to :University
  has_many :SocietyFeedback

  # Validations
	validates_associated :SocietyFeedback
	validates_associated :SocietyAdmin
	validates_associated :SocietyEvent
	validates_associated :SocietyFollower
  validates_associated :SocietyNetwork
  validates :name, presence: true, length: { maximum: 255 }
  validates :logo, length: { maximum: 255 }
  validates :website, length: { maximum: 255 }
  validates :description, presence: true
  validates :short_description, presence: true
  validates :office_address_line1, presence: true, length: { maximum: 255 }
  validates :office_address_line2, length: { maximum: 255 }
  validates :office_state, presence: true, length: { maximum: 255 }
  validates :office_city, presence: true, length: { maximum: 255 }
  validates :office_postcode, presence: true, numericality: { only_integer: true }, length: { maximum: 4 }
  validates :email, presence: true, confirmation: true, uniqueness:true, format: { with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/} 
  
  accepts_nested_attributes_for :admin
    
end
