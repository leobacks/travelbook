class Tweet < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  has_many :tweet_tags, dependent: :destroy
  has_many :tags, through: :tweet_tags
  mount_uploader :image, ImageUploader
  has_many :tweet_prices, dependent: :destroy
  has_many :prices, through: :tweet_prices
end
