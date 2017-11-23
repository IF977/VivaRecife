class BairrosController < ApplicationController
  def index
    @bairros = Bairro.all
    if params[:search]
      @bairros = Bairro.search(params[:search]).order("created_at DESC")
    else
      @bairros = Bairro.all.order('created_at DESC')
    end
  end
end
