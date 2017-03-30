class JoueursController < ApplicationController
  before_action :set_joueur, only: [:show, :edit, :destroy, :update]
  before_filter :authenticate_user!

  def index
  	@joueurs = Joueur.all.order('name ASC')
  	@decks = Deck.all
    @joueur = Joueur.new
  end
  def show
    @deckretour = Deck.find(@joueur.deck_id)
  end
  def edit
  end
  def update
    if @joueur.update joueur_params
      redirect_to joueurs_path
    else
      redirect_to root_path
    end
  end
  def create
    @joueur=Joueur.create joueur_params
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
  def joueur_params
    params.require(:joueur).permit(
      :name, 
      :attack, 
      :defense, 
      :speciality, 
      :deck_id,
      :avatar
      )
  end
end
