class LineItem < ApplicationRecord
  belongs_to :book
  belongs_to :cart
  belongs_to :order

  # LOGIC
  def total_price
    self.quantity * self.book.price
  end
end


