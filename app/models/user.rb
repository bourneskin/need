class User < ActiveRecord::Base
  has_many :comments
  validates_associated :comments
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  
  validates :pwd, presence: true
  validates :pwd, confirmation: true
  
  
end
