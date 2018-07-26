class Syllabus < ApplicationRecord
	has_attached_file :document
					 
	validates_attachment :document, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessing.document)}
	validates :document, presence: true
	validates :school, presence: true
	validates :university, presence: true
	validates :coordinator, presence: true
end
