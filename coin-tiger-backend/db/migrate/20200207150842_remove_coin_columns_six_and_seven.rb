class RemoveCoinColumnsSixAndSeven < ActiveRecord::Migration[6.0]
  def change
     remove_column :baskets, :coinSix
  end
end
