class CreateUnity20194Apps < ActiveRecord::Migration[6.0]
  def change
    create_table :unity20194_apps do |t|
      t.integer :width
      t.integer :height
      t.boolean :is_allowed_fullscreen
      t.string :loader
      t.string :json
      t.string :data
      t.string :code
      t.string :framework

      t.timestamps
    end
  end
end
