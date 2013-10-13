class Company < ActiveRecord::Base

	#Attr_accessible
	attr_accessible :description, :title

	#Validations
	validates :description, :presence => true, :allow_blank => false
	validates :title, :presence => true, :length => {:minimum => 5, :maximum => 50}

	#Associations
	has_many :soluctions
end