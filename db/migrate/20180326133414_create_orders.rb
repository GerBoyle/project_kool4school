class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.decimal :shippingFee
      t.decimal :total

      t.timestamps
    end
  end
end
