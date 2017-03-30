class DecksController < ApplicationController
  before_filter :authenticate_user!

  def index
  	@decks = Deck.all
    @deck = Deck.new
  end

  def create
    @deck = Deck.new deck_params
    if @deck.save
      flash[:success] = "L\'équipe #{@deck.name} a bien été enregistrée."
      redirect_to @deck
    else
      render 'decks'
    end
  end

  def deck_params
    params.require(:deck).permit(
      :name, 
      :speciality, 
      :position, 
      :place
      )
  end

  def show
    @deck = Deck.find(params[:id])
    @joueursdeck = Joueur.where("deck_id= '#{params[:id]}'")
  end
end
