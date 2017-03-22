Rails.application.routes.draw do

  get 'parties/show'

  resources :parties, only: [:show]
  resources :decks, only: [:index, :show]
  resources :joueurs, only: [:index, :show, :edit, :update, :destroy, :update, :create]
  post 'joueurs/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
