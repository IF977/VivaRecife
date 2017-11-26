class ContatoController < ApplicationController
  def index
  end
  def contato_enviado
  	SendEmailMailer.recebendo_email(params[:name],params[:email],params[:message]).deliver
  	redirect_to action: "index"
  end
end
