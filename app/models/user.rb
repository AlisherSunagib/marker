class User < ApplicationRecord
	before_save { self.email = email.downcase }
	validates :name, presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false } 
	has_secure_password
	validates :password, presence: true, length: { minimum: 6 }

	validates :role, presence: true
	belongs_to :Role, :primary_key => "role", :foreign_key => "role"

	validates :workplace, presence: true

	belongs_to :university_pull, optional: true

	has_many :disciplines, :primary_key => "email", :foreign_key => "user"

end
