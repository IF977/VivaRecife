Rails.application.routes.draw do
  get 'home/index'

  #resources :articles

  root 'home#index'
end
