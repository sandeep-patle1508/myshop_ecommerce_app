class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.datetime :date
      t.decimal :total, precision: 5, scale: 2

      t.timestamps
    end

    add_index :orders, :user_id
  end
end
