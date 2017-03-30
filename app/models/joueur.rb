class Joueur < ActiveRecord::Base
	belongs_to :deck

	validates :name, presence: {
		message: "Le nom doit être renseigné."
	}

	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end