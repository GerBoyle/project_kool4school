class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :description
      t.string :author
      t.string :subject
      t.string :publisher
      t.decimal :price

      t.timestamps
    end
  end
end
