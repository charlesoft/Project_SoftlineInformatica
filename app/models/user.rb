class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
  :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :password, :password_confirmation, :remember_me

	#Attr_accessible
	attr_accessible :name, :last_name, :cpf, :email, :dat, :gender

	#Constants
	MALE = 1
	FEMALE = 2

	#Validations
	#validates :name, :presence => true, :allow_blank => false
	#validates :last_name, :presence => true, :allow_blank => false
	#validates_uniqueness_of :email, :fomat => {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create}
	#validates :gender, :presence => true
	#validates :cpf, :presence => true
	#validates :gender, :presence => true
	#validates :dat, :presence => true


end