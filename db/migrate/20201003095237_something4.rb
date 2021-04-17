class Something4 < ActiveRecord::Migration[6.0]
  def change
    remove_column :unity201904_games, :wasm_data
    add_column :unity201904_games, :data, :string
    add_column :unity201904_games, :json, :string
  end
end
