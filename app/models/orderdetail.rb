class Orderdetail < ApplicationRecord
    #Order Details belongs to an order
    belongs_to :order
    #One Book Details belong to one Order
    has_one :book
end
