class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.integer :order_id
      t.integer :sku_id
      t.decimal :sale_price

      t.timestamps
    end

    add_index :order_items, :order_id
  end
end
