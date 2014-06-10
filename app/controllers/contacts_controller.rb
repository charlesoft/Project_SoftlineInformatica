# -*- coding: utf-8 -*-
class ContactsController < ApplicationController

	before_filter :authenticate_user!, :except => [:new, :create, :get_states, :information]
	
	def index
		@contacts = Contact.all
	end

	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(params[:contact])
		if @contact.save
			flash[:alert]= "Mensagem enviada com sucesso!"
			render :action => :new
		else
			flash[:alert]="Verifique se inseriu os campos obrigatorios"
			render :action => :new
		end	
	end

	def show 
		@contact = Contact.find(params[:id])
	end

	def get_states
		@state = State.find(params[:id])
	end

	def information
	end

end
