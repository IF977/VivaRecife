Rails.application.routes.draw do
  get 'bairros/index'

  get 'contato/index'
  post 'contato/contato_enviado'

  get 'sobre/index'

  get 'inserindo_dados/index'

  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
