class User < ApplicationRecord
  validates :twitter_uid, presence: true, uniqueness: true
  validates :permalink, presence: true, uniqueness: true, length: {maximum: 32}
  validates :name, presence: true, length: {maximum: 32}
  validates :description, length: {maximum: 250}

  mount_uploader :image, UserImageUploader
end
