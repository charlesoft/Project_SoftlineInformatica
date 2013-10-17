class City < ActiveRecord::Base

	#Attr_accessible
	attr_accessible :name, :state_id

	#Validations
	validates :name, :presence => true, :length => {:minimum => 5, :maximum => 50}
	validates :state_id, :presence => true

	#Associations
	belongs_to :state

end