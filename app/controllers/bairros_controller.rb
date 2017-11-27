class BairrosController < ApplicationController
  def index
    @bairros = Bairro.all
    if params[:search]
      @bairros = Bairro.search(params[:search]).order("nome ASC")
    else
      @bairros = Bairro.all.order('nome ASC')
    end
  end
end
