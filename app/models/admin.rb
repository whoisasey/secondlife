class Admin < ApplicationRecord
  before_save { self.email = email.downcase }
  has_many :charities
  validates_length_of :charities, maximum: 1
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, 
            uniqueness: { case_sensitive: false }, 
            length: { maximum: 50 },
            format: { with: VALID_EMAIL_REGEX }
  validates :company_name, presence: true
  has_secure_password
end