class AddColumnToFavorites < ActiveRecord::Migration[6.0]
  def change
    add_column :favorites, :coin_gecko_id, :string
  end
end
