class RenameGamesOver < ActiveRecord::Migration[5.2]
  def change
    rename_column :games, :over, :is_over
  end
end
