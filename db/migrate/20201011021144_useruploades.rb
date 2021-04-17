class Useruploades < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :is_published_url, :boolean
    add_column :users, :is_published_twitter_url, :boolean
  end
end
