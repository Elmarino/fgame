class Joueur < ActiveRecord::Base
	belongs_to :deck

	validates :name, presence: {
		message: "Le nom doit être renseigné."
	}

end