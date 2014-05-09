class User < ActiveRecord::Base
	has_many :SocietyFollower
  has_many :SocietyAdmin
  has_many :EventFollower
  has_many :Ticket
  has_many :Feedback
  has_one  :Gallery
  validates_associated :SocietyFollower
  validates_associated :SocietyAdmin
  validates_associated :EventFollower
  validates_associated :Ticket
  validates_associated :Feedback
  validates_associated :Gallery
	validates :first_name, presence: true, length: { maximum: 255 }
	validates :last_name, presence: true, length: { maximum: 255 }
  validates :email, presence: true, confirmation: true, uniqueness:true,  format: { with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/} 
  validates :password, presence: true, confirmation: true, length: { maximum: 255, minimum: 8 }
  validates :university, length: { maximum: 255 }, presence: true
  validates :phone_number, numericality: { only_integer: true }, presence: true
  validates :username, presence: true, uniqueness: true, length: { maximum: 255 }
end
