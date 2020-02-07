class AddColumnsToBasket < ActiveRecord::Migration[6.0]
  def change
    add_column :baskets, :coin_1_q, :float
    add_column :baskets, :coin_2_q, :float
    add_column :baskets, :coin_3_q, :float
    add_column :baskets, :coin_4_q, :float
    add_column :baskets, :coin_5_q, :float
  end
end
