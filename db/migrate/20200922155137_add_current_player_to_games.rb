class AddCurrentPlayerToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :current_player, :string
  end
end
