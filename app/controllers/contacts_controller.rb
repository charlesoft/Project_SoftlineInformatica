class ContactsController < ApplicationController

	before_filter :authenticate_user!, :except => [:new, :create, :get_cities]

	def index
		@contacts = Contact.all
	end

	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(params[:contact])
		if @contact.save
			flash[:notice]= "Mensagem enviada com sucesso!"
			render :action => :new
		else
			flash[:notice]="Verifique se inseriu os campos obrigatorios"
			
		end
	end

	def show 
		@contact = Contact.find(params[:id])
	end

	def get_cities
		@state = State.find(params[:id])
	end
end
