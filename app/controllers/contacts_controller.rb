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
		params[:contact][:state] = params[:state][:state_id]
		params[:contact][:city] = params[:city][:city_id]
		@contact = Contact.new(params[:contact])
		if @contact.save
			flash[:notice]= "Mensagem enviada com sucesso"
		else
			flash[:alert]= "Verifique se preencheu todos os campos corretamente"
		end	

		render :action => :new
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
