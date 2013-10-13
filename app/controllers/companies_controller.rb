# -*- coding: utf-8 -*-
class CompaniesController < ApplicationController

	before_filter :authenticate_user!, :except => [:index,:show]
	#layout 'application_test', :only => [:new,:create,:edit,:update,:destroy] 

	def index
		@companies = Company.all
	end

	def new
		@company = Company.new 
	end

	def create
		@company = Company.new(params[:company])
		if @company.save
			flash[:notice] = "Registro inserido com sucesso!"
			redirect_to companies_path
		else
			flash[:notice] = "Falha na gravação do registro"
			render :action => :new
		end
	end

	def show
		@company = Company.find(params[:id])
	end

	def edit
		@company = Company.find(params[:id])
	end

	def update
		@company = Company.find(params[:id])
		if @company.update_attributes(params[:user])
			flash[:notice] = "Registro atualizado com sucesso!"
			redirect_to company_path(@company)

		else
			flash[:notice] = "Falha na atualização do registro"
			render :action => :new
		end
	end

	def destroy
		@company = Company.find(params[:id])
		flash[:notice] = @company.destroy ? "Registro excluído com sucesso!" : "Não foi possível excluir o registro atual!"
		redirect_to companies_path
	end

end