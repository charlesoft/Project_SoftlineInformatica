# -*- coding: utf-8 -*-
class UsersController < ApplicationController

	layout "application_test"
	
	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			flash[:notice] = "Usuário criado com sucesso!"
			redirect_to user_path(@user)
		else
			flash[:notice] = "Falha na criação do usuário"
			render :action => :new
		end

	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(params[:user])
			flash[:notice] ="Usuário modificado!"
			redirect_to user_path(@user)
		else
			flash[:notice] = "Falha na alteração do usuário"
			render :action => :edit
		end
	end

	def destroy
		@user = User.find(params[:id])
		flash[:notice] = @user.destroy ? "Usuário deletado": "Falha na remoção"
		redirect_to users_path
	end 
end