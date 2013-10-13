# -*- coding: utf-8 -*-
class SoluctionsController < ApplicationController

	before_filter :authenticate_user!, :except => [:index_soluctions]

	def index_soluctions
		@soluctions = Soluction.all
	end

	def new
		@companies = Company.all
		@soluction = Soluction.new
	end

	def create
		@soluction = Soluction.new(params[:soluction])
		flash[:notice] = @soluction.save ? "Serviço inserido com sucesso!" : "Falha ao inserir o serviço!"
	end

	def create_soluction
		@soluction = Soluction.new(:company_id => params[:company_id], :title => params[:title],
		:description => params[:description])

		if @soluction.save
			redirect_to @soluction.company
		else
			render :action => :new
		end
	end

	def edit
		@soluction = Soluction.find(params[:id])
	end

	def update
		@soluction = Soluction.find(params[:id])
		flash[:notice] = @soluction.update_attributes ? "Serviço atualizado com sucesso!" : "Falha na atualização do serviço!"
	end

	def destroy
		@soluction = Soluction.find(params[:id])
		flash[:notice] = @soluction.destroy ? "Serviço excluído com sucesso!" : "Falha na exclusão do registro!" 
	end
end