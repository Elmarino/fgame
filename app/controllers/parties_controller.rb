class PartiesController < ApplicationController
	before_action :attack, only: [:play]
	before_action :defense, only: [:play]
	before_filter :authenticate_user!

	def show
		@deck_game= Deck.find(params[:team])
		@joueurs_game=Joueur.where("deck_id='#{params[:team]}'")
	end
	def play
		#----_play concern the team the user composed
		#----_against concern the IA team

		#@deck_against = Deck.order("RANDOM()").limit(1)
		@deck_against = Deck.find(1)

		#@players_against= Joueur.where("deck_id='#{@deck_against.ids}'").order("RANDOM()").limit(5)
		@players_against= Joueur.where("deck_id='#{@deck_against.id}'").order("RANDOM()").limit(5)

		@players_play = Joueur.find(params[:player_ids])
		@deck_play=Deck.where("id='#{@players_play.first.deck_id}'")

		attack_play=0
		defense_play=0
		@players_play.each do |player|
			attack_play += player.attack
			defense_play += player.defense
		end

		attack_against=0
		defense_against=0
		@players_against.each do |player|
			attack_against += player.attack
			defense_against += player.defense
		end

		@result_play=attack_play-defense_against
		@result_against=attack_against-defense_play

		puts"======================================"
		puts"Result User: #{@deck_against}"
		puts"======================================"
		puts"DECK PLAY: #{@deck_play.inspect}"

		

	end

	def attack
	end
	def defense
	end
end