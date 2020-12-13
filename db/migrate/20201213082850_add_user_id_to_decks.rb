class AddUserIdToDecks < ActiveRecord::Migration[6.0]
  def change
    add_column :decks, :user_id, :integer
  end
end
