class UniversityPull < ApplicationRecord
	has_many :universities
	has_many :users
	validates :key, presence: true
	validates :name, presence: true
end
