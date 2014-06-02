class State < ActiveRecord::Base
  #Attr_accessible
  attr_accessible :name, :acronym

  #Validations
  validates :name, :presence => true, :length=> {:minimum => 5, :maximum => 50}
  validates :acronym, :presence => true

  #Scopes
  default_scope {order('states.name ASC')}

  #Associations
  has_many :cities, :order => 'name'
end
