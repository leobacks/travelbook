class CreateTweetTags < ActiveRecord::Migration[6.0]
  def change
    create_table :tweet_tags do |t|
      t.string :tweet
      t.references :tweet, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
