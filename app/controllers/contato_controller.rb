class ContatoController < ApplicationController
  def index
  end
  def recebendo_mensagem_usuario
  	SendEmailMailer.recebendo_email(params[:name],params[:email],params[:text]).deliver
  end
end
