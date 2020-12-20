class AddDetailsToTweets < ActiveRecord::Migration[6.0]
  def change
    add_column :tweets, :lat, :float
    add_column :tweets, :lng, :float
  end
end
