class JoueursController < ApplicationController
  before_action :set_joueur, only: [:show, :edit, :destroy]
  before_filter :authenticate_user!, only: [:create, :destroy]

  def index
  	@joueurs = Joueur.all
  	@decks = Deck.all
  end
  def show
    @deckretour = Deck.find(@joueur.deck_id)
  end
  def edit
  end
  def create
    @joueur=Joueur.create name: params[:name], attack: params[:attack], defense: params[:defense], speciality: params[:speciality], deck_id: params[:team]
  	#Méthodes avec .new
  	#livre = Book.new
  	#livre.title = params[:ajout]
  	#livre.save
  	redirect_to joueurs_path
  end
  def destroy
  	@joueur.destroy
    redirect_to joueurs_path
  end
  def set_joueur
  	@joueur = Joueur.find(params[:id])
  end
end
