class CreateTweetTag2s < ActiveRecord::Migration[6.0]
  def change
    create_table :tweet_tag2s do |t|
      t.references :tweet, null: false, foreign_key: true
      t.references :tag2, null: false, foreign_key: true

      t.timestamps
    end
  end
end
