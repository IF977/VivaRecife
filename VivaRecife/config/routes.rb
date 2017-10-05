Rails.application.routes.draw do
  #resources :buscar
  # '/buscar'
  get '/buscar' => 'buscar#bucar'
  get '/home' => 'home#index'
  get '/contato' => 'contato#contato'
  get '/sobre' => 'sobre#sobre'
  get '/bairros' => 'bairros#bairros'
  root 'home#index'
  # '/buscar#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
