class CreateBaskets < ActiveRecord::Migration[5.1]
  def change
    create_table :baskets do |t|
      t.integer :user_id
      t.integer :book_id
      t.integer :amount

      t.timestamps
    end
  end
end
