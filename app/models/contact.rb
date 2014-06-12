class Contact < ActiveRecord::Base

	#Attr_accessible
 	attr_accessible :name, :function, :state, :city, :phone_number, :company, :email, :message

	#Validates
	validates :name, :presence => true, :allow_blank => false
	validates :state, :presence => true
	validates :city, :presence => true
	validates :phone_number, :presence => true
	validates :company, :presence => true, :allow_blank => false
	validates :email, :presence => true, :format => {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create}
	validates :message, :presence => true, :allow_blank => false

	
end