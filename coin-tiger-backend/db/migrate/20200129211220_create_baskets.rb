class CreateBaskets < ActiveRecord::Migration[6.0]
  def change
    create_table :baskets do |t|
      t.string :name
      t.integer :initialBasketValue
      t.string :indexDate
      t.string :coinOne
      t.string :coinTwo
      t.string :coinThree
      t.string :coinFour
      t.string :coinFive
      t.string :coinSix
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
