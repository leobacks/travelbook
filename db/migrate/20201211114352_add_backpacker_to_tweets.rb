class AddBackpackerToTweets < ActiveRecord::Migration[6.0]
  def change
    add_column :tweets, :backpacker, :string
    add_column :tweets, :price, :string
  end
end
