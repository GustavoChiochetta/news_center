Rails.application.routes.draw do
  resources :noticias, only: [:index, :update, :destroy]
  resources :noticias_autores, only: [:show, :create]
end
