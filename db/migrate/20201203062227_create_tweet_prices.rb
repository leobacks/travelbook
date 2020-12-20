class CreateTweetPrices < ActiveRecord::Migration[6.0]
  def change
    create_table :tweet_prices do |t|
      t.references :tweet, null: false, foreign_key: true
      t.references :price, null: false, foreign_key: true

      t.timestamps
    end
  end
end
