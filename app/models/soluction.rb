class Soluction < ActiveRecord::Base

	#Attr_accessible
	attr_accessible :description, :title, :company_id

	#Validations
	validates :description, :presence => true, :allow_blank => false
	validates :title, :presence => true, :allow_blank => false
	validates :company_id, :presence => true

	#Associations
	belongs_to :company

end