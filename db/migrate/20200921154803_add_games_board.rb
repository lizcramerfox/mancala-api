class AddGamesBoard < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :board, :string
  end
end
