class Orderdetail < ApplicationRecord
    
    belongs_to :order
    has_one :book
end
