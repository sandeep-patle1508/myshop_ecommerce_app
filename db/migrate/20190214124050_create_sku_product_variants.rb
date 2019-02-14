class CreateSkuProductVariants < ActiveRecord::Migration[5.2]
  def change
    create_table :sku_product_variants, id: false do |t|
      t.references :sku, index: true, foreign_key: true
      t.references :product_variant, index: true, foreign_key: true
    end
  end
end
