class State < ActiveRecord::Base
  #Attr_accessible
  attr_accessible :name, :uf

  #Validations
  validates :name, :presence => true, :length=> {:minimum => 5, :maximum => 50}
  validates :uf, :presence => true

  #Associations
  has_many :cities
end
