class AddJoueur < ActiveRecord::Migration[5.0]
  def change
	create_table :joueurs
    add_column :joueurs, :name, :string
    add_column :joueurs, :attack, :integer
    add_column :joueurs, :defense, :integer
    add_column :joueurs, :speciality, :string
    add_column :decks, :deck_id, :integer
    add_index :decks, :deck_id
  end
end
