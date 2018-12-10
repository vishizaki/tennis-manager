class AddPlayerAndOpponentToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :current_player_id, :integer
    add_index :matches, :current_player_id
    add_column :matches, :opponent_id, :integer
    add_index :matches, :opponent_id
  end
end
