class Estimation < ApplicationRecord
	belongs_to :user
	belongs_to :discipline
	validates :ocen_list_edit, presence: true 

	has_attached_file :ocen_list_edit
	validates_attachment :ocen_list_edit, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessing.document)}

end
