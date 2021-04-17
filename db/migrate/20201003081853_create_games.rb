class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :permalink
      t.integer :user_id
      t.string :platform

      t.timestamps
    end
  end
end
