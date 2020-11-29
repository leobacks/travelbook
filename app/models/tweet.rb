class Tweet < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  has_many :tweet_tags, dependent: :destroy
  has_many :tags, through: :tweet_tags
  has_many :tweet_tags2, dependent: :destroy
  has_many :tags2, through: :tweet_tags
end
