class Price < ApplicationRecord
  has_many :tweet_prices, dependent: :destroy
  has_many :tweets, through: :tweet_prices
end
