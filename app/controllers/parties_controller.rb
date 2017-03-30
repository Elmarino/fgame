class PartiesController < ApplicationController
	before_filter :authenticate_user!

	def show
		if params.has_key?(:team)
			@deck_game= Deck.find(params[:team])
			@joueurs_game=Joueur.where("deck_id='#{params[:team]}'")
		else
			redirect_to root_path
		end
	end
	def play
		if params.has_key?(:player_ids)
			#----_play concern the team the user composed
			#----_against concern the IA team

			@deck_against = Deck.order("RANDOM()").limit(1)
			@players_against= Joueur.where("deck_id='#{@deck_against[0].id}'").order("RANDOM()").limit(5)

			@players_play = Joueur.find(params[:player_ids])
			@deck_play=Deck.where("id='#{@players_play.first.deck_id}'")

			#Attack & defense points of user team
			attack_play=0
			defense_play=0
			@players_play.each do |player|
				attack_play += player.attack
				defense_play += player.defense
			end

			#Attack & defense points of IA team
			attack_against=0
			defense_against=0
			@players_against.each do |player|
				attack_against += player.attack
				defense_against += player.defense
			end

			#Calculate the result of the game with attack & defense attributes of players
			@result_play=attack_play-defense_against
			@result_against=attack_against-defense_play

			#Win & Lose display
			if @result_play>@result_against
				@win=true
			else
				@win=false
			end
		else
			redirect_to root_path
		end
			
	end
end