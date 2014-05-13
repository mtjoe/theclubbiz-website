class Society < ActiveRecord::Base
  
  mount_uploader :logo, LogoUploader
	has_many :SocietyFeedback
  	has_many :SocietyAdmin
  	has_many :SocietyEvent
  	has_many :SocietyFollower
  	has_one  :Gallery
    has_many :SocietyCategory
    has_many :SocietyUniversity
  	validates_associated :SocietyFeedback
  	validates_associated :SocietyAdmin
  	validates_associated :SocietyEvent
  	validates_associated :SocietyFollower
  	validates_associated :Gallery
    validates_associated :SocietyCategory
    validates_associated :SocietyUniversity
    validates :name, presence: true, length: { maximum: 255 }
    validates :website, length: { maximum: 255 }
    validates :description, presence: true
    validates :short_description, presence: true
    validates :office_address_line1, presence: true, length: { maximum: 255 }
    validates :office_address_line2, length: { maximum: 255 }
    validates :office_state, presence: true, length: { maximum: 255 }
    validates :office_city, presence: true, length: { maximum: 255 }
    validates :office_postcode, presence: true, numericality: { only_integer: true }, length: { maximum: 4 }
    validates :email, presence: true, confirmation: true, uniqueness:true, format: { with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/} 
    validates :phone_number, numericality: { only_integer: true }
end
