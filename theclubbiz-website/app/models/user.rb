class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :SocietyFollower
  has_many :SocietyAdmin
  has_many :EventFollower
  has_many :Ticket
  has_many :EventFeedback
  has_many :SocietyFeedback
  has_many :UserUniversity
  has_one  :Gallery
  has_many :UniversityAdmin
  has_many :Networks
  has_one :Announcement
  validates_associated :SocietyFollower
  validates_associated :SocietyAdmin
  validates_associated :EventFollower
  validates_associated :Ticket
  validates_associated :EventFeedback
  validates_associated :SocietyFeedback
  validates_associated :Gallery
  validates_associated :UserUniversity
  validates_associated :UniversityAdmin
  validates_associated :Networks
  validates_associated :Announcement
	validates :first_name, presence: true, length: { maximum: 255 }
	validates :last_name, presence: true, length: { maximum: 255 } 
  validates :password, presence: true, confirmation: true, length: { maximum: 255, minimum: 8 }
  validates :phone_number, numericality: { only_integer: true }, presence: true
  validates :username, presence: true, uniqueness: true, length: { maximum: 255 }
end
