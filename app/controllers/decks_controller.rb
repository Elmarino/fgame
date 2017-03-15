class DecksController < ApplicationController
  def index
  	@decks = Deck.all
  end
  def create
  end
  def show
  end
  def update
  end
  def destroy
  end
end
