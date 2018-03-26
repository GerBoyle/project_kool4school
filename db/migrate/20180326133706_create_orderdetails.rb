class CreateOrderdetails < ActiveRecord::Migration[5.1]
  def change
    create_table :orderdetails do |t|
      t.integer :order_id
      t.integer :book_id
      t.integer :quantity

      t.timestamps
    end
  end
end
