class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :photo, PhotoUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Many-to-many associations
	has_many :SocietyFollower
  has_many :SocietyAdmin
  has_many :EventFollower
  has_many :EventFeedback
  has_many :SocietyFeedback
  has_many :UniversityAdmin


  # Many-to-one associations
  has_many :Networks
  has_many :Ticket

  # One-to-one associations
  has_one :Announcement

  # Validations
  validates_associated :SocietyFollower
  validates_associated :SocietyAdmin
  validates_associated :EventFollower
  validates_associated :Ticket
  validates_associated :EventFeedback
  validates_associated :SocietyFeedback
  validates_associated :Networks
  validates_associated :Announcement
	validates :first_name, presence: true, length: { maximum: 255 }
	validates :last_name, presence: true, length: { maximum: 255 } 
  validates :password, presence: true, confirmation: true, length: { maximum: 255, minimum: 8 }
  validates :phone_number, numericality: { only_integer: true }, presence: true
  validates :username, presence: true, uniqueness: true, length: { maximum: 255 }
end
