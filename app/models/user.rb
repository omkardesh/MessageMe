class User < ApplicationRecord
	validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 25 }
#	before_save {self.email = email.downcase }
#	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
#	validates :email, presence: true, uniqueness: { case_sensitive: false }, format: {with: VALID_EMAIL_REGEX }

	has_secure_password
	has_many :messages
end
