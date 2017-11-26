class SendEmailMailer < ApplicationMailer
	def recebendo_email (nome,email,texto)
		@nome = nome
		@email = email
		@texto = texto
		mail(to:"vivapelorecife@gmail.com",subject:"Usuario entrando em contato!")
	end	
	def agradecimento_por_contato (nome,email)

	end
	def notificacao_cadastro (nome,email)	
		
	end
end
