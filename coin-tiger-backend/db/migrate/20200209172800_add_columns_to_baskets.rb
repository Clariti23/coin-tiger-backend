class AddColumnsToBaskets < ActiveRecord::Migration[6.0]
  def change
    add_column :baskets, :coinOneId, :string
    add_column :baskets, :coinTwoId, :string
    add_column :baskets, :coinThreeId, :string
    add_column :baskets, :coinFourId, :string
    add_column :baskets, :coinFiveId, :string
  end
end
