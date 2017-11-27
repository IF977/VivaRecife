class InserindoDadosController < ApplicationController
	require 'json'

	def index
		# recebendo Json's 
		arqJsonGym = File.read("app/assets/jsons/academia_da_cidade.json")
		arqJsonAcidente = File.read("app/assets/jsons/acidentes_transito.json")
		arqJsonBairro = File.read("app/assets/jsons/bairros.json")
		arqJsonFeira = File.read("app/assets/jsons/feira_livre.json")
		arqJsonMuseu = File.read("app/assets/jsons/museus.json")
		arqJsonParque = File.read("app/assets/jsons/parques_pracas.json")
		arqJsonShopping = File.read("app/assets/jsons/shopping.json")
		arqJsonTeatro = File.read("app/assets/jsons/teatros.json")

		aux = JSON.parse(arqJsonGym)
		for x in aux do
			acad = Gym.new
			acad.nome = x["nome"]
      		acad.bairro = x["bairro"]
      		acad.endereco = x["endereco"]
      		acad.fone = x["fone"]
      		acad.horario = x["horario_de_aulas"]
      		acad.lat = x["latitude"]
      		acad.long = x["longitude"]
      		acad.save
		end


		aux = JSON.parse(arqJsonAcidente)
		for x in aux do
			aci = Acidente.new
      		aci.bairro = x["bairro"]
      		aci.quantVitimas = x["quantidade de vitimas"]
      		aci.data = x["data de abertura"]
      		aci.save
		end

            aux = JSON.parse(arqJsonBairro)
            for x in aux do
                  bai = Bairro.new
                  bai.nome = x["properties"]["bairro_nome_ca"]
                  bai.save
            end

		aux = JSON.parse(arqJsonFeira)
		for x in aux do
			fei = Feira.new
			fei.nome = x["nome"]
      		fei.bairro = x["bairro"]
      		fei.endereco = x["localizacao"]
      		fei.dias = x["dias"]
      		fei.horario = x["horarios"]
      		fei.lat = x["latitude"]
      		fei.long = x["longitude"]
      		fei.save
		end

		aux = JSON.parse(arqJsonMuseu)
		for x in aux do
			mus = Museu.new
			mus.nome = x["nome"]
      		mus.bairro = x["bairro"]
      		mus.descricao = x["descricao"]
      		mus.endereco = x["logradouro"]
      		mus.telefone = x["telefone"]
      		mus.site = x["site"]
      		mus.lat = x["latitude"]
      		mus.long = x["longitude"]
      		mus.save
		end

		aux = JSON.parse(arqJsonParque)
		for x in aux do
			par = Parque.new
			par.nome = x["nome"]
      		par.bairro = x["bairro"]
      		par.tipo = x["tipo_equip_urbano"]
      		par.endereco = x["endereco_equip_urbano"]
      		par.area = x["area"]
      		par.lat = x["latitude"]
      		par.long = x["longitude"]
      		par.save
		end


		aux = JSON.parse(arqJsonShopping)
		for x in aux do
			sho = Shopping.new
			sho.nome = x["nome"]
      		sho.bairro = x["bairro"]
      		sho.descricao = x["descricao"]
      		sho.endereco = x["logradouro"]
      		sho.telefone = x["telefone"]
      		sho.site = x["site"]
      		sho.lat = x["latitude"]
      		sho.long = x["longitude"]
      		sho.save
		end

		aux = JSON.parse(arqJsonTeatro)
		for x in aux do
			tea = Teatro.new
			tea.nome = x["nome"]
      		tea.bairro = x["bairro"]
      		tea.descricao = x["descricao"]
      		tea.endereco = x["logradouro"]
      		tea.telefone = x["Telefone"]
      		tea.lat = x["latitude"]
      		tea.long = x["longitude"]
      		tea.save
		end
		
	end	
end
