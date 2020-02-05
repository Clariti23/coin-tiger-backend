class RemoveApiNameFromFavorites < ActiveRecord::Migration[6.0]
  def change
      remove_column :favorites, :apiId
      remove_column :favorites, :name
  end
end
