class Tag2 < ApplicationRecord
  has_many :tweet_tags2, dependent: :destroy
  has_many :tweets, through: :tweet_tags2
end
