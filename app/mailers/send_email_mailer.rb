class SendEmailMailer < ApplicationMailer
	def recebendo_email (nome,email,texto)
		@nome = nome
		@email = email
		@texto = texto
		mail(to:"vivapelorecife@gmail.com",subject:"Usuario entrando em contato!")
	end		
end
