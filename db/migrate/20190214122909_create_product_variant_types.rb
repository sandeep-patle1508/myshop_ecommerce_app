class CreateProductVariantTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :product_variant_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
