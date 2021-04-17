class CreateUnity20201Apps < ActiveRecord::Migration[6.0]
  def change
    create_table :unity20201_apps do |t|
      t.integer :width
      t.integer :height
      t.boolean :is_allowed_fullscreen
      t.string :loader
      t.string :data
      t.string :framework
      t.string :wasm

      t.timestamps
    end
  end
end
