class Speciality < ApplicationRecord
	#belongs_to :university, optional: true
	#belongs_to :Speciality_pull, optional: true
	has_many :disciplines
end
