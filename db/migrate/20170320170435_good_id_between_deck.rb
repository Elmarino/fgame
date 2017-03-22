class GoodIdBetweenDeck < ActiveRecord::Migration[5.0]
  def change
  	remove_column :decks, :deck_id
  	add_column :joueurs, :deck_id, :integer
  	add_index :joueurs, :deck_id
  end
end
