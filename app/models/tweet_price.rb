class TweetPrice < ApplicationRecord
  belongs_to :tweet
  belongs_to :price
end
