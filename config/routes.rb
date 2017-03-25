Rails.application.routes.draw do
	root 'decks#index'

	devise_for :users
	post 'parties/show'
	post 'parties/play'

	#resources :parties, only: [:show]
	resources :decks, only: [:index, :show, :create]
	resources :joueurs, only: [:index, :show, :edit, :update, :destroy, :update, :create]
	#post 'joueurs/edit'
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
