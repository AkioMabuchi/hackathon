class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :twitter_uid
      t.string :permalink
      t.string :name
      t.string :image
      t.string :description
      t.string :url
      t.string :twitter_url

      t.timestamps
    end
  end
end
