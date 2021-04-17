class Dropunity < ActiveRecord::Migration[6.0]
  def change
    drop_table :unity201904_games
    drop_table :unity20201_games
  end
end
