class AddDefaultToGamesIsOver < ActiveRecord::Migration[5.2]
  def change
    Game.where(is_over: nil).update_all(is_over: false)
    change_column :games, :is_over, :boolean, null: false, default: false
  end
end
