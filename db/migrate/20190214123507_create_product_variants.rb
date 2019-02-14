class CreateProductVariants < ActiveRecord::Migration[5.2]
  def change
    create_table :product_variants do |t|
      t.string :name
      t.integer :product_variant_type_id

      t.timestamps
    end
  end
end
