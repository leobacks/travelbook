class AddPriceToTags < ActiveRecord::Migration[6.0]
  def change
    add_column :tags, :price, :string
  end
end
