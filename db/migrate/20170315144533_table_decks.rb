class TableDecks < ActiveRecord::Migration[5.0]
  def change
    create_table :decks
    add_column :decks, :name, :string
    add_column :decks, :speciality, :string
    add_column :decks, :position, :integer
  end
end
