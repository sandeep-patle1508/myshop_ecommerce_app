class ProductVariant < ApplicationRecord
  has_and_belongs_to_many :skus

  belongs_to :product_variant_type
end
