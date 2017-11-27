class BairrosController < ApplicationController
  def index
    @bairros = Bairro.all
    if params[:search]
      @bairros = Bairro.search(params[:search]).order("nome DESC")
    else
      @bairros = Bairro.all.order('nome DESC')
    end
  end
end
