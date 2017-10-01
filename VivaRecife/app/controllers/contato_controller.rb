class ContatoController < ApplicationController
	def new
		
	end

	def method_name
		render plain: params[:contato].inspect
	end
end
