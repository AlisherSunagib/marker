class SpecialityPull < ApplicationRecord
	has_many :specialities
	validates :key, presence: true
	validates :name, presence: true

	has_attached_file :ocen_list
	validates_attachment :ocen_list, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)}

end
