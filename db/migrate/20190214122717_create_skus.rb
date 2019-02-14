class CreateSkus < ActiveRecord::Migration[5.2]
  def change
    create_table :skus do |t|
      t.string :sku
      t.decimal :price
      t.integer :product_id

      t.timestamps
    end

    add_index :skus, :sku
  end
end
