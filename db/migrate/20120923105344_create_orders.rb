class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :item
      t.decimal :price, :precision => 5, :scale => 2
      t.string :sender
      t.string :recipient

      t.timestamps
    end
  end
end
