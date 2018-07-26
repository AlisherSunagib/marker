class University < ApplicationRecord
	


	belongs_to :university_pull, :primary_key => "key", :foreign_key => "key"
	has_many :users
	has_many :disciplines, :primary_key => "key", :foreign_key => "university"


	has_attached_file :mop
	validates_attachment :mop, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)}


	has_attached_file :ked
	validates_attachment :ked, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingnl.document)}


	validates :key, presence: true, uniqueness: { case_sensitive: false } 
	validates :name, presence: true
end
