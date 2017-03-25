class Deck < ActiveRecord::Base 
	enum place: [:West, :East]
	has_many :joueurs 
end
